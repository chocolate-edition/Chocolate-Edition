vec3 GetWave(in vec3 pos, float waveSpeed) {
    float wind = frameTimeCounter * waveSpeed * WAVING_SPEED;

    float magnitude = sin(wind * 0.0027 + pos.z + pos.y) * 0.04 + 0.04;
    // #ifdef RAIN_ATMOSPHERE
    //     magnitude *= rainFactor * 1.3 + 1.0;
    // #endif
    float d0 = sin(wind * 0.0127);
    float d1 = sin(wind * 0.0089);
    float d2 = sin(wind * 0.0114);
    vec3 wave;
    wave.x = sin(wind*0.0063 + d0 + d1 - pos.x + pos.z + pos.y) * magnitude;
    wave.z = sin(wind*0.0224 + d1 + d2 + pos.x - pos.z + pos.y) * magnitude;
    wave.y = sin(wind*0.0015 + d2 + d0 + pos.z + pos.y - pos.y) * magnitude;

    #if defined NO_WAVING_INDOORS && !defined WAVE_EVERYTHING
        wave *= clamp(lmCoord.y - 0.87, 0.0, 0.1);
    #else
        wave *= 0.1;
    #endif

    return wave * WAVING_I;
}

void DoWave_Foliage(inout vec3 playerPos, vec3 worldPos) {

    worldPos.y *= 0.5;

    vec3 wave = GetWave(worldPos, 170.0);
    wave.x = wave.x * 8.0 + wave.y * 4.0;
    wave.y = 0.0;
    wave.z = wave.z * 3.0;
    
    playerPos.xyz += wave;
}

void DoWave_GroundedFoliage(inout vec3 playerPos, vec3 worldPos) {
    if (gl_MultiTexCoord0.t < mc_midTexCoord.t || fract(worldPos.y + 0.21) > 0.26) {
        DoWave_Foliage(playerPos, worldPos);
    }
}

void DoWave_Leaves(inout vec3 playerPos, vec3 worldPos, float waveMult) {
    worldPos *= vec3(0.5, 0.25, 0.5);

    vec3 wave = GetWave(worldPos, 170.0);
    wave *= vec3(8.0, 3.0, 4.0);

    playerPos.xyz += wave * waveMult;
}

void DoWave_Water(inout vec3 playerPos, vec3 worldPos) {
	if (fract(worldPos.y + 0.005) > 0.06) {
        float waterWaveTime = frameTimeCounter * 6.0 * WAVING_SPEED;
        worldPos.xz *= 18.0;
        
        float wave  = sin(waterWaveTime * 0.7 + worldPos.x * 0.14 + worldPos.z * 0.07);
              wave += sin(waterWaveTime * 0.5 + worldPos.x * 0.10 + worldPos.z * 0.05);

        #ifdef NO_WAVING_INDOORS
            wave *= clamp(lmCoord.y - 0.87, 0.0, 0.1);
        #else
            wave *= 0.1;
        #endif

        playerPos.y += wave * 0.125 - 0.05;
    }
}

void DoWave_Lava(inout vec3 playerPos, vec3 worldPos) {
	if (fract(worldPos.y + 0.005) > 0.06) {
        float lavaWaveTime = frameTimeCounter * 3.0 * WAVING_SPEED;
        worldPos.xz *= 14.0;
        
        float wave  = sin(lavaWaveTime * 0.7 + worldPos.x * 0.14 + worldPos.z * 0.07);
              wave += sin(lavaWaveTime * 0.5 + worldPos.x * 0.05 + worldPos.z * 0.10);

        #if defined NETHER && defined WAVIER_LAVA 
            if (worldPos.y > 30 && worldPos.y < 32) wave *= 4.5;
            else wave *= 2.0;
        #endif

        playerPos.y += wave * 0.0125;
    }
}

void DoWave(inout vec3 playerPos, int mat) {
    vec3 worldPos = playerPos.xyz + cameraPosition.xyz;

    #if defined GBUFFERS_TERRAIN || defined SHADOW
        #ifdef WAVING_FOLIAGE
            if (mat == 10004 || mat == 10005) { // Grounded Waving Foliage
                DoWave_GroundedFoliage(playerPos.xyz, worldPos);
            } else if (mat == 10020) { // Upper Layer Waving Foliage
                DoWave_Foliage(playerPos.xyz, worldPos);
            }
            
            #if defined WAVING_LEAVES || defined WAVING_LAVA
                else
            #endif
        #endif

        #ifdef WAVING_LEAVES
            if (mat == 10008) { // Leaves
                DoWave_Leaves(playerPos.xyz, worldPos, 1.0);
            } else if (mat == 10012) { // Vine
                // Reduced waving on vines to prevent clipping through blocks
                DoWave_Leaves(playerPos.xyz, worldPos, 0.75);
            }
            
            #ifdef WAVING_LAVA
                else
            #endif
        #endif

        #ifdef WAVING_LAVA
            if (mat == 10068 || mat == 10069) { // Lava
                DoWave_Lava(playerPos.xyz, worldPos);

                #ifdef GBUFFERS_TERRAIN
                    // G8FL735 Fixes Optifine-Iris parity. Optifine has 0.9 gl_Color.rgb on a lot of versions
                    glColorRaw.rgb = min(glColorRaw.rgb, vec3(0.9));
                #endif
            }
        #endif
    #endif

    #if defined GBUFFERS_WATER || defined SHADOW
        #ifdef WAVING_WATER_VERTEX
            #if defined WAVING_ANYTHING_TERRAIN && defined SHADOW
                else
            #endif

            if (mat == 31000) { // Water
                DoWave_Water(playerPos.xyz, worldPos);
            }
        #endif
    #endif
}
void DoInteractiveWave(inout vec3 playerPos, int mat){
    if (mat == 10004 || mat == 10005 || mat == 10020 || mat == 10017 || mat == 10628 || mat == 10632) { 
        float lPos = clamp(length(playerPos.xyz), 0.0, 1.0);
        playerPos.xz += 1.0 - lPos * (4.0 - lPos * 3.0);
        // if (length(playerPos) < 2.0) playerPos.xz += playerPos.xz*max(5.0/pow(max(length(playerPos*vec3(8.0,2.0,8.0)-vec3(0.0,2.0,0.0)),2.0),1.0)-0.625,0.0) * 1.3;
    }
}

void DoWaveEverything(inout vec3 playerPos) {
    vec3 worldPos = playerPos.xyz + cameraPosition.xyz;
    DoWave_Leaves(playerPos.xyz, worldPos, 1.0);
    DoWave_Foliage(playerPos.xyz, worldPos);
}
