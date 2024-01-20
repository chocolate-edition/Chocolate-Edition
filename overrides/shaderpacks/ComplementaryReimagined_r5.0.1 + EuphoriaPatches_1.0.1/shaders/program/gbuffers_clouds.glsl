////////////////////////////////////////
// Complementary Reimagined by EminGT with Euphoria Patches by isuewo and SpacEagle17 //
////////////////////////////////////////

//Common//
#include "/lib/common.glsl"

//////////Fragment Shader//////////Fragment Shader//////////Fragment Shader//////////
#ifdef FRAGMENT_SHADER

#if CLOUD_STYLE_DEFINE == 50
// We use CLOUD_STYLE_DEFINE instead of CLOUD_STYLE in this file because Optifine can't use generated defines for pipeline stuff
	in vec2 texCoord;

	flat in vec3 upVec, sunVec;

	in vec4 glColor;
#endif

//Uniforms//
#if CLOUD_STYLE_DEFINE == 50
	uniform vec3 skyColor;

	uniform sampler2D tex;

	#if defined BORDER_FOG || RAINBOW_CLOUD != 0 || defined AURORA_INFLUENCE
		uniform float viewWidth;
		uniform float viewHeight;

		uniform mat4 gbufferProjectionInverse;
		uniform mat4 gbufferModelViewInverse;
		uniform mat4 shadowModelView;
		uniform mat4 shadowProjection;
	#endif
	#ifdef AURORA_INFLUENCE
		uniform int moonPhase;
		uniform float inSnowy;
		uniform float blindness;
		uniform float darknessFactor;
		uniform vec3 cameraPosition;
		uniform sampler2D noisetex;
	#endif
#endif

//Pipeline Constants//

//Common Variables//
#if CLOUD_STYLE_DEFINE == 50
	float SdotU = dot(sunVec, upVec);
	float sunFactor = SdotU < 0.0 ? clamp(SdotU + 0.375, 0.0, 0.75) / 0.75 : clamp(SdotU + 0.03125, 0.0, 0.0625) / 0.0625;
	float sunVisibility = clamp(SdotU + 0.0625, 0.0, 0.125) / 0.125;
	float sunVisibility2 = sunVisibility * sunVisibility;
#endif

//Common Functions//

//Includes//
#if CLOUD_STYLE_DEFINE == 50
	#include "/lib/colors/skyColors.glsl"
	#include "/lib/util/spaceConversion.glsl"

	#if defined TAA && (defined BORDER_FOG || RAINBOW_CLOUD != 0)
		#include "/lib/util/jitter.glsl"
	#endif

	#ifdef ATM_COLOR_MULTS
		#include "/lib/colors/colorMultipliers.glsl"
	#endif

	#ifdef COLOR_CODED_PROGRAMS
		#include "/lib/misc/colorCodedPrograms.glsl"
	#endif

	#if RAINBOW_CLOUD != 0 || defined AURORA_INFLUENCE
		#include "/lib/colors/rainbowColor.glsl"
	#endif

	#ifdef AURORA_INFLUENCE
		#include "/lib/atmospherics/auroraBorealis.glsl"
	#endif
#endif

//Program//
void main() {
	#if CLOUD_STYLE_DEFINE != 50
		discard;
	#else
		vec4 color = texture2D(tex, texCoord) * glColor;

		vec4 translucentMult = vec4(mix(vec3(0.666), color.rgb * (1.0 - pow2(pow2(color.a))), color.a), 1.0);

		#if defined BORDER_FOG || RAINBOW_CLOUD != 0 || defined AURORA_INFLUENCE
			vec3 screenPos = vec3(gl_FragCoord.xy / vec2(viewWidth, viewHeight), gl_FragCoord.z);
			#ifdef TAA
				vec3 viewPos = ScreenToView(vec3(TAAJitter(screenPos.xy, -0.5), screenPos.z));
			#else
				vec3 viewPos = ScreenToView(screenPos);
			#endif
		#endif

		#ifdef OVERWORLD
			vec3 cloudLight = mix(vec3(0.8, 1.6, 1.5) * sqrt1(nightFactor), mix(dayDownSkyColor, dayMiddleSkyColor, 0.1), sunFactor);
			#if RAINBOW_CLOUD != 0
				vec3 wpos = normalize((gbufferModelViewInverse * vec4(viewPos, 1.0)).xyz);
				wpos /= (abs(wpos.y) + length(wpos.xz));

				cloudLight *= getRainbowColor(wpos.xz * rainbowCloudDistribution * 0.3, 0.05);
			#elif defined AURORA_INFLUENCE
				AuroraAmbientColor(cloudLight, viewPos);
			#endif
			color.rgb *= sqrt(cloudLight) * (1.2 + 0.4 * noonFactor * invRainFactor);

			#ifdef ATM_COLOR_MULTS
				atmColorMult = GetAtmColorMult();
				color.rgb *= atmColorMult;
			#endif
		#endif

		#ifdef BORDER_FOG
			vec3 playerPos = ViewToPlayer(viewPos);

			float xzMaxDistance = max(abs(playerPos.x), abs(playerPos.z));
			float cloudDistance = 375.0;
			cloudDistance = clamp((cloudDistance - xzMaxDistance) / cloudDistance, 0.0, 1.0);
			color.a *= clamp01(cloudDistance * 3.0);
		#endif
		color.a *= CLOUD_TRANSPARENCY;

		#ifdef COLOR_CODED_PROGRAMS
			ColorCodeProgram(color);
		#endif

		/* DRAWBUFFERS:013 */
		gl_FragData[0] = color;
		gl_FragData[1] = vec4(0.0, 0.0, 0.0, 1.0);
		gl_FragData[2] = vec4(1.0 - translucentMult.rgb, translucentMult.a);
	#endif
}

#endif

//////////Vertex Shader//////////Vertex Shader//////////Vertex Shader//////////
#ifdef VERTEX_SHADER

#if CLOUD_STYLE_DEFINE == 50
	out vec2 texCoord;

	flat out vec3 upVec, sunVec;

	out vec4 glColor;
#endif

//Uniforms//
#if CLOUD_STYLE_DEFINE == 50
	uniform mat4 gbufferModelViewInverse;

	#ifdef TAA
		uniform float viewWidth, viewHeight;
	#endif
#endif

//Attributes//

//Common Variables//

//Common Functions//

//Includes//
#if CLOUD_STYLE_DEFINE == 50
	#ifdef TAA
		#include "/lib/util/jitter.glsl"
	#endif
#endif

//Program//
void main() {
	#if CLOUD_STYLE_DEFINE != 50
		gl_Position = vec4(-1.0);
	#else
		texCoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;

		glColor = gl_Color;

		upVec = normalize(gbufferModelView[1].xyz);
		sunVec = GetSunVector();

		vec4 position = gbufferModelViewInverse * gl_ModelViewMatrix * gl_Vertex;
		position.xz -= vec2(88.0);
		gl_Position = gl_ProjectionMatrix * gbufferModelView * position;

		#ifdef TAA
			gl_Position.xy = TAAJitter(gl_Position.xy, gl_Position.w);
		#endif
	#endif
}

#endif
