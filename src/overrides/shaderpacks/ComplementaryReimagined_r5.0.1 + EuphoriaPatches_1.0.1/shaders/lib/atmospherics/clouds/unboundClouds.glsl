#if CLOUD_UNBOUND_SIZE_MULT != 100
    #define CLOUD_UNBOUND_SIZE_MULT_M CLOUD_UNBOUND_SIZE_MULT * 0.01
#endif

#if CLOUD_QUALITY == 1
    const float cloudStretchRaw = 11.0;
#elif CLOUD_QUALITY == 2
    const float cloudStretchRaw = 16.0;
#elif CLOUD_QUALITY == 3
    const float cloudStretchRaw = 18.0;
#endif
#if CLOUD_UNBOUND_SIZE_MULT <= 100
    const float cloudStretch = cloudStretchRaw;
#else
    const float cloudStretch = cloudStretchRaw / float(CLOUD_UNBOUND_SIZE_MULT_M);
#endif

const float cloudHeight = cloudStretch * 2.0;

float Noise3D(vec3 p) {
    p.z = fract(p.z) * 128.0;
    float iz = floor(p.z);
    float fz = fract(p.z);
    vec2 a_off = vec2(23.0, 29.0) * (iz) / 128.0;
    vec2 b_off = vec2(23.0, 29.0) * (iz + 1.0) / 128.0;
    float a = texture2D(noisetex, p.xy + a_off).r;
    float b = texture2D(noisetex, p.xy + b_off).r;
    return mix(a, b, fz);
}

float GetCloudNoise(vec3 tracePos, int cloudAltitude, float lTracePosXZ, float cloudPlayerPosY) {
    vec3 tracePosM = tracePos.xyz * 0.00016;
    #ifdef FASTER_RAIN_CLOUDS
        float wind = mix(0.0006, 0.001, rainFactor);
    #else
        float wind = 0.0006;
    #endif
    float noise = 0.0;
    float currentPersist = 1.0;
    float total = 0.0;

    #if CLOUD_SPEED_MULT == 100
        #define CLOUD_SPEED_MULT_M CLOUD_SPEED_MULT * 0.01
        wind *= syncedTime;
    #else
        #define CLOUD_SPEED_MULT_M CLOUD_SPEED_MULT * 0.01
        wind *= frameTimeCounter * CLOUD_SPEED_MULT_M;
    #endif
    #if CLOUD_UNBOUND_SIZE_MULT != 100
        tracePosM *= CLOUD_UNBOUND_SIZE_MULT_M;
        wind *= CLOUD_UNBOUND_SIZE_MULT_M;
    #endif

    #if CLOUD_QUALITY == 1
        int sampleCount = 2;
        float persistance = 0.6;
        float noiseMult = 0.95;
        tracePosM *= 0.5; wind *= 0.5;
    #elif CLOUD_QUALITY == 2
        int sampleCount = 4;
        float persistance = 0.5;
        float noiseMult = 1.07;
    #elif CLOUD_QUALITY == 3
        int sampleCount = 4;
        float persistance = 0.5;
        float noiseMult = 1.0;
    #endif

    #if CLOUD_DIRECTION == 2
        tracePosM.xz = tracePosM.zx;
    #endif

    for (int i = 0; i < sampleCount; i++) {
        #if CLOUD_QUALITY >= 2
            noise += Noise3D(tracePosM + vec3(wind, 0.0, 0.0)) * currentPersist;
        #else
            noise += texture2D(noisetex, tracePosM.xz + vec2(wind, 0.0)).b * currentPersist;
        #endif
        total += currentPersist;

        tracePosM *= 3.0;
        wind *= 0.5;
        currentPersist *= persistance;
    }
    noise = pow2(noise / total);
    noiseMult *= 0.65 + 0.01 * sqrt(lTracePosXZ + 10.0) // more clouds far away
                      + 0.1 * clamp01(-cloudPlayerPosY / cloudHeight) // more clouds when camera is above them
                      + 0.4 * rainFactor; // more clouds during rain
    noise *= noiseMult * CLOUD_UNBOUND_AMOUNT;

    float threshold = clamp(abs(cloudAltitude - tracePos.y) / cloudStretch, 0.001, 0.999);
    threshold = pow2(pow2(pow2(threshold)));
    return noise - (threshold * 0.2 + 0.25);
}

vec4 GetVolumetricClouds(int cloudAltitude, float distanceThreshold, inout float cloudLinearDepth, float skyFade, float skyMult0, vec3 nPlayerPos, float lViewPosM, float VdotS, float VdotU, float dither) {
	vec4 volumetricClouds = vec4(0.0);

    float higherPlaneAltitude = cloudAltitude + cloudStretch;
    float lowerPlaneAltitude  = cloudAltitude - cloudStretch;

    float lowerPlaneDistance  = (lowerPlaneAltitude - cameraPosition.y) / nPlayerPos.y;
    float higherPlaneDistance = (higherPlaneAltitude - cameraPosition.y) / nPlayerPos.y;
    float minPlaneDistance = min(lowerPlaneDistance, higherPlaneDistance);
          minPlaneDistance = max(minPlaneDistance, 0.0);
    float maxPlaneDistance = max(lowerPlaneDistance, higherPlaneDistance);
    if (maxPlaneDistance < 0.0) return vec4(0.0);
    float planeDistanceDif = maxPlaneDistance - minPlaneDistance;

    #if CLOUD_QUALITY == 1
        float stepMult = 16.0;
    #elif CLOUD_QUALITY == 2
        float stepMult = 24.0;
    #elif CLOUD_QUALITY == 3
        float stepMult = 16.0;
    #endif

    #if CLOUD_UNBOUND_SIZE_MULT > 100
        stepMult = stepMult / sqrt(float(CLOUD_UNBOUND_SIZE_MULT_M));
    #endif

    int sampleCount = int(planeDistanceDif / stepMult + dither + 1);
    vec3 traceAdd = nPlayerPos * stepMult;
    vec3 tracePos = cameraPosition + minPlaneDistance * nPlayerPos;
    tracePos += traceAdd * dither;
    tracePos.y -= traceAdd.y;

    float firstHitPos = 0.0;
    float VdotSM1 = max0(sunVisibility > 0.5 ? VdotS : - VdotS);
    float VdotSM1M = VdotSM1 * invRainFactor;
    float VdotSM2 = pow2(VdotSM1) * abs(sunVisibility - 0.5) * 2.0;
    float VdotSM3 = VdotSM2 * (2.5 + rainFactor) + 1.5 * rainFactor;

    for (int i = 0; i < sampleCount; i++) {
        tracePos += traceAdd;

        if (abs(tracePos.y - cloudAltitude) > cloudStretch) break;

        vec3 cloudPlayerPos = tracePos - cameraPosition;
        float lTracePos = length(cloudPlayerPos);
        float lTracePosXZ = length(cloudPlayerPos.xz);
        float cloudMult = 1.0;
        if (lTracePosXZ > distanceThreshold) break;
        if (lTracePos > lViewPosM) {
            if (skyFade < 0.7) continue;
            else cloudMult = skyMult0;
        }

        float cloudNoise = GetCloudNoise(tracePos, cloudAltitude, lTracePosXZ, cloudPlayerPos.y);

        if (cloudNoise > 0.00001) {
            #if defined CLOUD_CLOSED_AREA_CHECK && defined REALTIME_SHADOWS
                if (GetShadowOnCloud(tracePos, cloudAltitude, lowerPlaneAltitude, higherPlaneAltitude)) {
                    if (eyeBrightness.y != 240) continue;
                }
            #endif

            if (firstHitPos < 1.0) {
                firstHitPos = lTracePos;
                #if CLOUD_QUALITY == 1
                    tracePos.y += 4.0 * (texture2D(noisetex, tracePos.xz * 0.001).r - 0.5);
                #endif
            }

            float opacityFactor = min1(cloudNoise * 8.0) * CLOUD_TRANSPARENCY;

            float cloudShading = 1.0 - (higherPlaneAltitude - tracePos.y) / cloudHeight;
            cloudShading *= 1.0 + 0.75 * VdotSM3 * (1.0 - opacityFactor);
            
            vec3 colorSample = cloudAmbientColor * (0.7 + 0.3 * cloudShading) + cloudLightColor * cloudShading;
            //vec3 colorSample = 2.5 * cloudLightColor * pow2(cloudShading); // <-- Used this to take the Unbound logo
            vec3 cloudSkyColor = GetSky(VdotU, VdotS, dither, true, false);
            float cloudFogFactor = clamp((distanceThreshold - lTracePosXZ) / distanceThreshold, 0.0, 0.8) * 1.25;
            float skyMult1 = 1.0 - 0.2 * (1.0 - skyFade) * max(sunVisibility2, nightFactor);
            float skyMult2 = 1.0 - 0.33333 * skyFade;
            colorSample = mix(cloudSkyColor, colorSample * skyMult1, cloudFogFactor * skyMult2 * 0.72);
            colorSample *= pow2(1.0 - max(blindness, darknessFactor));
            
            volumetricClouds.rgb = mix(volumetricClouds.rgb, colorSample, 1.0 - min1(volumetricClouds.a));
            volumetricClouds.a += opacityFactor * pow(cloudFogFactor, 0.5 + 10.0 * pow(abs(VdotSM1M), 90.0)) * cloudMult;

            if (volumetricClouds.a > 0.9) {
                volumetricClouds.a = 1.0;
                break;
            }
        }
    }

    if (volumetricClouds.a > 0.5) cloudLinearDepth = sqrt(firstHitPos / far);

    return volumetricClouds;
}