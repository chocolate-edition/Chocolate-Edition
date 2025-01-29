/////////////////////////////////////
// Complementary Shaders by EminGT //
// With Euphoria Patches by SpacEagle17 //
/////////////////////////////////////

//Common//
#include "/lib/common.glsl"

//////////Fragment Shader//////////Fragment Shader//////////Fragment Shader//////////
#ifdef FRAGMENT_SHADER

noperspective in vec2 texCoord;

//Pipeline Constants//
#include "/lib/pipelineSettings.glsl"

//Common Variables//
#if defined MC_ANISOTROPIC_FILTERING || COLORED_LIGHTING_INTERNAL > 0 && !defined IS_IRIS || defined MULTICOLORED_BLOCKLIGHT || COLORED_LIGHTING > 0 && defined MC_OS_MAC
    #define ANY_ERROR_MESSAGE
#endif

#ifdef MULTICOLORED_BLOCKLIGHT
    #define OLD_SSBL_ERROR
#endif

#ifdef MC_ANISOTROPIC_FILTERING
    #define OPTIFINE_AF_ERROR
#endif

#if COLORED_LIGHTING_INTERNAL > 0 && !defined IS_IRIS
    #define OPTIFINE_ACL_ERROR
#endif

#if COLORED_LIGHTING > 0 && defined MC_OS_MAC
    #define APPLE_ACL_ERROR
#endif

//Common Functions//
#if IMAGE_SHARPENING > 0
    vec2 viewD = 1.0 / vec2(viewWidth, viewHeight);

    vec2 sharpenOffsets[4] = vec2[4](
        vec2( viewD.x,  0.0),
        vec2( 0.0,  viewD.x),
        vec2(-viewD.x,  0.0),
        vec2( 0.0, -viewD.x)
    );

    void SharpenImage(inout vec3 color, vec2 texCoordM) {
        #ifdef TAA
            float sharpenMult = IMAGE_SHARPENING;
        #else
            float sharpenMult = IMAGE_SHARPENING * 0.5;
        #endif
        float mult = 0.0125 * sharpenMult;
        color *= 1.0 + 0.05 * sharpenMult;

        for (int i = 0; i < 4; i++) {
            color -= texture2D(colortex3, texCoordM + sharpenOffsets[i]).rgb * mult;
        }
    }
#endif

float retroNoise (vec2 noise) {
    return fract(sin(dot(noise.xy,vec2(10.998,98.233)))*12433.14159265359);
}

vec2 curveDisplay(vec2 texCoord) {
    texCoord = texCoord * 2.0 - 1.0;
    vec2 offset = abs(texCoord.yx) * CURVATURE_AMOUNT * 0.5;
    #if SCREEN_ROUNDNESS == 1
        offset *= offset;
    #elif SCREEN_ROUNDNESS == 2
        offset *= pow2(offset);
    #elif SCREEN_ROUNDNESS == 3
        offset *= pow3(offset);
    #endif
    texCoord += texCoord * offset;
    return texCoord * 0.5 + 0.5;
}

vec2 border(vec2 texCoord) {
    const float borderAmount = 2.0 + BORDER_AMOUNT * 0.1;
    texCoord = texCoord * borderAmount - borderAmount * 0.5;
    return texCoord * 0.5 + 0.5;
}

vec3 scanline(vec2 texCoord, vec3 color) {
    const float frequency = SCANLINE_FREQUENCY;
    const float intensity = SCANLINE * 0.1;
    const float speed = SCANLINE_SPEED;
    const float amount = SCANLINE_AMOUNT;
    #if SCANLINE_DIRECTION == 1
        texCoord = texCoord.yx;
    #endif

    float count = viewHeight * amount;
    vec2 scanlineColor = vec2(sin(mod(texCoord.y + frameTimeCounter * 0.2 * speed, frequency) * count), cos(mod(texCoord.y + frameTimeCounter * 0.5 * speed, 0.7 * frequency) * count));
    #ifdef SCANLINE_MONOCHROME
        vec3 scanlines = vec3(scanlineColor.y + scanlineColor.x * 0.2);
    #else
        vec3 scanlines = vec3(scanlineColor.x * SCANLINE_R, scanlineColor.y * SCANLINE_G, scanlineColor.x * SCANLINE_B);
    #endif

    return color += color * scanlines * intensity;
}

vec4 samplePixelatedBuffer(sampler2D tex, vec2 coords, int size) { // thanks to belmu for the code (mine had edge artifacts) https://github.com/BelmuTM/Noble/tree/master
    vec2 aspectCorrectedSize = size * vec2(aspectRatio, 1.0);
    return texelFetch(tex, ivec2((floor(coords * aspectCorrectedSize) / aspectCorrectedSize) * viewSize), 0);
}

float halftones(vec2 texCoord, float angle, float scale) { // Thanks to https://www.shadertoy.com/view/4sBBDK by starea
    vec2 coord = texCoord * viewSize;
    vec2 dots = rotate(angle) * coord * scale;
    return sin(dots.x) * sin(dots.y) * 4.0;
}

float noiseSpeedLines(float a, float p, float s) {
    float p1 = hash11Modified(mod(floor(a), p), s);
    float p2 = hash11Modified(mod(floor(a) + 2.0, p), s);
    return smoothstep(0.0, 0.1, mix(p1, p2, smoothstep(0.0, 1.0, fract(a))) - 0.3);
}

float layeredNoiseSpeedLines(float a, float s) {
    return noiseSpeedLines(a, 20.0, s) + noiseSpeedLines(a * 5.0, 20.0 * 5.0, s);
}

float speedLines(vec2 uv) { // Thanks to https://www.shadertoy.com/view/NldyDn by HalbFettKaese - modified a bit
    uv = uv * 2.0 - 1.0;
    float a = atan(uv.x, uv.y) / pi;
    float value = layeredNoiseSpeedLines((a * 17 + velocity * 7.0) * SPEED_LINE_THICKNESS * 1.5, (floor(frameTimeCounter * 10.0 * SPEED_LINES_SPEED) / 10.0 + velocity * 0.1) * 2.0);
    value -= 1.0 / length(uv) * 0.9 * (1.0 - clamp(velocity, 0.0, 0.4));
    return clamp(value, 0.0, 0.1);
}

float randomNoiseOverlay1(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

float grid(float uv) {
    float mainLine = smoothstep(0.9995 * (1.0 - MAIN_GRID_INTERVAL * 0.00005), 1.0, cos(uv * tau / (1.0 / MAIN_GRID_INTERVAL))) * 0.3;
    float subLine = smoothstep(0.9998 * (1.0 - SUB_GRID_INTERVAL * 0.00075), 1.0, cos(uv * tau * SUB_GRID_INTERVAL / (1.0 / MAIN_GRID_INTERVAL))) * 0.1;
      return mainLine + subLine;
}

#if WATERMARK > 0
    vec4 waterMarkFunction(float watermarkAspectRatio, vec2 textCoord, vec2 screenUV){
        float watermarkSize = 1 / WATERMARK_SIZE;
        if (aspectRatio < 3) textCoord += vec2(3 * screenUV.x * watermarkSize * 1.5 - 3 * watermarkSize * 1.5, 1.0 - 3 * watermarkAspectRatio * screenUV.y * watermarkSize * 1.5 / aspectRatio);
        else                 textCoord += vec2(screenUV.x * aspectRatio - aspectRatio, 1.0 - watermarkAspectRatio * screenUV.y);

        vec4 EuphoriaPatchesText = texture2D(depthtex2, textCoord);
        float guiIsNotHidden = 1.0;
        if (textCoord.x > -1 && textCoord.x < 0 && textCoord.y > 0 && textCoord.y < 1) {
            #if WATERMARK == 2
                if (hideGUI == 0) guiIsNotHidden = 0.0;
            #elif WATERMARK == 3
                if (hideGUI == 0 || heldItemId != 40000 && heldItemId2 != 40000) guiIsNotHidden = 0.0;
            #endif
            return vec4(EuphoriaPatchesText.rgb, EuphoriaPatchesText.a * guiIsNotHidden); 
        }
    }
#endif

vec3 staticColor(vec3 color, float staticIntensity) { // credit to arananderson https://www.shadertoy.com/view/tsX3RN
    float maxStrength = max(MIN_STATIC_STRENGTH, MAX_STATIC_STRENGTH);
    float minStrength = min(MIN_STATIC_STRENGTH, MAX_STATIC_STRENGTH);
    const float speed = STATIC_SPEED * 10.0;

    vec2 fractCoord = fract(texCoord * fract(sin(frameTimeCounter * speed)));

    maxStrength = clamp(sin(frameTimeCounter * 0.5), minStrength, maxStrength);

    vec3 staticColor = vec3(retroNoise(fractCoord)) * maxStrength;
    return mix(vec3(1.0), color - staticColor, staticIntensity);
}

vec3 getPotatoColor(vec2 texCoord) {
    return texture2D(colortex5, texCoord).rgb;
}

bool checkPotatoPixel(vec2 pixelToCheck, vec3 targetColor, float threshold) {
    vec2 normalizedCoord = vec2(pixelToCheck.x / 128.0, pixelToCheck.y / 93.0);
    vec3 sampledColor = getPotatoColor(normalizedCoord);
    return distance(sampledColor, targetColor) < threshold;
}

#include "/lib/textRendering/textRenderer.glsl"

void beginTextM(int textSize, vec2 offset) {
    float scale = 860;
    beginText(ivec2(vec2(scale * viewWidth / viewHeight, scale) * texCoord) / textSize, ivec2(0 + offset.x, scale / textSize - offset.y));
    text.bgCol = vec4(0.0);
}

uint randomLetter(float offset) {
    uint letters[36] = uint[](
        _A, _B, _C, _D, _E, _F, _G, _H, _I, _J, _K, _L, _M, _N, _O, _P, _Q, _R, _S, _T, _U, _V, _W, _X, _Y, _Z,
        _0, _1, _2, _3, _4, _5, _6, _7, _8, _9
    );
    float animation = min(shaderStartSmooth * 0.3 - offset * 0.3, 0.1) * 10.0;
    if (animation < 0.9) {
        int randomIndex = int(hash11(frameTimeCounter * 0.1 + offset) * 36);
        return letters[randomIndex];
    } else {
        if (offset == 0.0) return _P;
        else if (offset == 0.1) return _O;
        else if (offset == 0.2) return _T;
        else if (offset == 0.3) return _A;
        else if (offset == 0.4) return _T;
        else if (offset == 0.5) return _O;
    }
}

#include "/lib/misc/potato.glsl"

vec3 potatoError(){
    vec3 color = vec3(0.6);
    beginTextM(10, vec2(6, 10));text.fgCol = vec4(1.0, 0.0, 0.0, 0.85);
        printString((_Y, _o, _u, _r, _space, _A, _c, _t, _i, _o, _n, _s, _space, _h, _a, _v, _e));printLine();
        printString((_C, _o, _n, _s, _e, _q, _u, _e, _n, _c, _e, _s, _exclm));printLine();printLine();printLine();
    endText(color);
    beginTextM(20, vec2(3, 20));text.fgCol = vec4(1.0, 0.0, 0.0, 0.85);
        printString((randomLetter(0.0), randomLetter(0.1), randomLetter(0.2), randomLetter(0.3), randomLetter(0.4), randomLetter(0.5)));
    endText(color);

    float pixelPotatoSize = 0.15;
    vec2 transformedCoords = (texCoord - vec2(0.8, 0.6)) / pixelPotatoSize;
    vec2 potatoSize = vec2(14.0, 9.0);
    vec2 pixelCoords = (vec2(transformedCoords.x, transformedCoords.y * -1) + 1.0) * potatoSize * 0.5;
    color.rgb = getPixelPotato(floor(pixelCoords), color, potatoSize);

    color *= staticColor(color, 1);
    return color;
}

//Program//
void main() {
    vec3 color = vec3(0.0);
    float viewWidthM = viewWidth;
    float viewHeightM = viewHeight;

    #if BORDER_AMOUNT != 0
        vec2 texCoordM = border(texCoord);
    #else
        vec2 texCoordM = texCoord;
    #endif

    #ifdef CURVE_DISPLAY
        texCoordM = curveDisplay(texCoordM);
    #endif

    vec2 texCoordBorder = texCoordM;

    #if CAMERA_NOISE_OVERLAY == 1
        texCoordM += vec2(randomNoiseOverlay1(texCoordM + vec2(0.0, 0.0)), randomNoiseOverlay1(texCoordM + vec2(1.0, 1.0))) * 0.01 * CAMERA_NOISE_OVERLAY_INTENSITY;
    #endif

    #if HORIZONTAL_NOISE > 0 && defined RETRO_ON
        float horizontalNoiseResolution = HORIZONTAL_NOISE * 100.0;
        float horizontalNoiseIntensity = HORIZONTAL_NOISE_INTENSITY * 0.002;
        float horizontalNoiseSpeed = HORIZONTAL_NOISE_SPEED * 0.0001;
        texCoordM.y *= horizontalNoiseResolution;
        texCoordM.y = int(texCoordM.y) * (1.0 / horizontalNoiseResolution);
        float noise = retroNoise(vec2(frameTimeCounter * horizontalNoiseSpeed, texCoordM.y));
        texCoordM.x += noise * horizontalNoiseIntensity;
    #endif

    #if (defined VERTICAL_SCREEN_DISPLACEMENT && defined RETRO_ON) || defined SPOOKY
        float displaceEffectOn = 1.0;
        #if defined SPOOKY && (!defined RETRO_ON || !defined VERTICAL_SCREEN_DISPLACEMENT)
            float randomShutterTime = 24000 * hash1(worldDay * 5); // Effect happens randomly throughout the day
            int displaceEffect = (int(hash1(worldDay / 2)) % (2 * 24000)) + int(randomShutterTime);
            displaceEffectOn = 0.0;
            if (worldTime > displaceEffect && worldTime < displaceEffect + 100) { // 100 in ticks - 5s, how long the effect will be on
                displaceEffectOn = 1.0;
            }
        #endif
        float scrollSpeed = VERTICAL_SCROLL_SPEED * 2.0;
        float stutterSpeed = VERTICAL_STUTTER_SPEED * 0.2;
        float scroll   = (1.0 - step(retroNoise(vec2(frameTimeCounter * 0.00002, 8.0)), 0.9 * (1.0 - VERTICAL_SCROLL_FREQUENCY * 0.3))) * scrollSpeed;
        float stutter  = (1.0 - step(retroNoise(vec2(frameTimeCounter * 0.00005, 9.0)), 0.8 * (1.0 - VERTICAL_STUTTER_FREQUENCY * 0.3))) * stutterSpeed;
        float stutter2 = (1.0 - step(retroNoise(vec2(frameTimeCounter * 0.00003, 5.0)), 0.7 * (1.0 - VERTICAL_STUTTER_FREQUENCY * 0.3))) * stutterSpeed;
        float verticalOffset = sin(frameTimeCounter) * scroll + stutter * stutter2;
        texCoordM.y = mix(texCoordM.y, mod(texCoordM.y + verticalOffset, VERTICAL_EDGE_GLITCH), displaceEffectOn);
    #endif

    #if WATERMARK > 0
        vec4 watermarkColor = waterMarkFunction(100.0 / 29.0, vec2(0.05), texCoordM.xy);
    #endif

    #ifdef UNDERWATER_DISTORTION
        if (isEyeInWater == 1)
            texCoordM += WATER_REFRACTION_INTENSITY * 0.00035 * sin((texCoord.x + texCoord.y) * 25.0 + frameTimeCounter * UNDERWATER_DISTORTION_STRENGTH);
    #endif

    #if defined PIXELATE_SCREEN && defined RETRO_ON
        #if LONG_EXPOSURE > 0
        if(hideGUI == 0 || isViewMoving()){ // GUI visible OR moving
        #endif
        color = samplePixelatedBuffer(colortex3, texCoordM, PIXEL_SIZE_SCREEN).rgb;
        #if LONG_EXPOSURE > 0
        } else {
        color = samplePixelatedBuffer(colortex7, texCoordM, PIXEL_SIZE_SCREEN).rgb;
        }
        #endif
    #else
        #if LONG_EXPOSURE > 0
        if(hideGUI == 0 || isViewMoving()){ // GUI visible OR moving
        #endif
            color = texture2D(colortex3, texCoordM).rgb;
        #if LONG_EXPOSURE > 0
        } else { // this is the accumulated one
            color = texture2D(colortex7, texCoordM).rgb;
        }
        #endif
    #endif

    #if CHROMA_ABERRATION > 0 || defined SPOOKY
        vec2 scale = vec2(1.0, viewHeight / viewWidth);
        #ifdef SPOOKY
            float aberrationStrength = max(CHROMA_ABERRATION, playerMood * 10.0);
        #else
            float aberrationStrength = CHROMA_ABERRATION;
        #endif
        vec2 aberration = (texCoordM - 0.5) * (2.0 / vec2(viewWidth, viewHeight)) * scale * aberrationStrength;
        color.rb = vec2(texture2D(colortex3, texCoordM + aberration).r, texture2D(colortex3, texCoordM - aberration).b);
    #endif

    #if LETTERBOXING > 0
        #if BORDER_AMOUNT > 0
            viewWidthM = viewWidth - viewWidth * BORDER_AMOUNT * 0.04;
        #endif
        float letterboxMargin = 0.5 - viewWidthM / (2 * viewHeightM * ASPECT_RATIO);
        #if LETTERBOXING == 2
            letterboxMargin = mix(0.0, letterboxMargin, isSneaking);
        #endif
        
        if (texCoord.y > 1.0 - letterboxMargin || texCoord.y < letterboxMargin) {
            #ifdef EXCLUDE_ENTITIES
                if (int(texelFetch(colortex6, texelCoord, 0).g * 255.1) != 254) color *= 0.0;
            #else
                color *= mix(0.0, 1.0, LETTERBOXING_TRANSPARENCY);
            #endif
        }
    #endif

    #ifdef BAD_APPLE
        color = vec3((int(texelFetch(colortex6, texelCoord, 0).g * 255.1) != 254) ? 0.0 : 1.0);
    #endif

    #if IMAGE_SHARPENING > 0
        #if LONG_EXPOSURE > 0
        if(hideGUI == 0 || isViewMoving()){ // GUI visible OR moving
        #endif
            SharpenImage(color, texCoordM);
        #if LONG_EXPOSURE > 0
        }
        #endif
    #endif

    /*ivec2 boxOffsets[8] = ivec2[8](
        ivec2( 1, 0),
        ivec2( 0, 1),
        ivec2(-1, 0),
        ivec2( 0,-1),
        ivec2( 1, 1),
        ivec2( 1,-1),
        ivec2(-1, 1),
        ivec2(-1,-1)
    );

    for (int i = 0; i < 8; i++) {
        color = max(color, texelFetch(colortex3, texelCoord + boxOffsets[i], 0).rgb);
    }*/

    #if WATERMARK > 0
        color.rgb = mix(color.rgb, watermarkColor.rgb, watermarkColor.a);
    #endif

    #ifdef LET_THERE_BE_COLORS
        color = hash33(color * frameTimeCounter);
    #endif

    #if (STATIC_NOISE > 0 && defined RETRO_ON) || defined SPOOKY
        float staticIntensity = 0.0;
        #ifdef SPOOKY
            if (playerMood > 0.9) staticIntensity = (playerMood * 10.0 - 9.0) * 0.75;
        #else
            staticIntensity = STATIC_NOISE * 0.1;
        #endif
        color *= staticColor(color, staticIntensity);
    #endif

    #if SCANLINE > 0 && defined RETRO_ON
        color = scanline(texCoord, color);
    #endif

    #ifdef HALFTONE
        #ifdef HALFTONE_MONOCHROME
            float colorOld = GetLuminance(color);
        #else
            vec3 colorOld = color;
        #endif
        const float dotAngle = HALFTONE_ANGLE * pi * 0.5;
        const float dotScale = HALFTONE_SCALE;
        const float dotBrightness = HALFTONE_BRIGHTNESS * 2.0;
        color = vec3(colorOld * dotBrightness * 5.0 - 5.0 + halftones(texCoordM, dotAngle, dotScale));
    #endif

    #ifdef SPOOKY
        color.rgb = mix(color.rgb, color.rgb * GetLuminance(color), 0.60);
    #endif

    #if SPEED_LINES > 0
        float speedLines = speedLines(texCoordM);
        speedLines = mix(0.0, speedLines, SPEED_LINES_TRANSPARENCY);
        #if SPEED_LINES == 1
            color += vec3(mix(0.0, speedLines, isSprinting));
        #else
            color += vec3(speedLines);
        #endif
    #endif

    #if MAIN_GRID_INTERVAL > 1
        float grid = max(grid(texCoordM.x), grid(texCoordM.y));
        #if GRID_CONDITION == 0
            color += grid;
        #elif GRID_CONDITION == 1
            color += mix(0.0, grid, isSneaking);
        #elif GRID_CONDITION == 2
            float isHoldingSpyglass = 0.0;
            if (heldItemId == 45013 || heldItemId2 == 45013) isHoldingSpyglass = 1.0; //holding spyglass
            color += mix(0.0, grid, isHoldingSpyglass);
        #endif
    #endif

    #if defined CURVE_DISPLAY || BORDER_AMOUNT != 0
        if (texCoordBorder.x < 0.0 || texCoordBorder.x > 1.0) color = vec3(0.0);
        if (texCoordBorder.y < 0.0 || texCoordBorder.y > 1.0) color = vec3(0.0);
    #endif

    vec2 pixelToCheck = vec2(42.0, 30.0);
    // vec3 colorAtPixel = getPotatoColor(pixelToCheck / vec2(viewWidth, viewHeight));
    // beginTextM(8, vec2(6, 10));
    // printVec3(colorAtPixel);
    // endText(color.rgb);
    bool isPotato = checkPotatoPixel(pixelToCheck, vec3(0.92, 0.74, 0.45), 0.05);
    if(!isPotato) color.rgb = potatoError();

    #if defined ANY_ERROR_MESSAGE && !defined OLD_SSBL_ERROR
        color.rgb = mix(color.rgb, vec3(0.0), 0.65);
    #endif

    #ifdef OLD_SSBL_ERROR
        #include "/lib/textRendering/old_ssbl_error.glsl"
    #elif defined OPTIFINE_AF_ERROR
        #include "/lib/textRendering/error_optifine_af.glsl"
    #elif defined APPLE_ACL_ERROR
        #include "/lib/textRendering/error_apple_acl.glsl"
    #elif defined OPTIFINE_ACL_ERROR
        #include "/lib/textRendering/error_optifine_acl.glsl"
    #endif

    /* DRAWBUFFERS:0 */
    gl_FragData[0] = vec4(color, 1.0);
}

#endif

//////////Vertex Shader//////////Vertex Shader//////////Vertex Shader//////////
#ifdef VERTEX_SHADER

noperspective out vec2 texCoord;

//Attributes//

//Common Variables//

//Common Functions//

//Includes//

//Program//
void main() {
    gl_Position = ftransform();
    texCoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
}

#endif
