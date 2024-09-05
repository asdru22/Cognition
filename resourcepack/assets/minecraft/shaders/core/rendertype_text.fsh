#version 150

#moj_import <minecraft:fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform float GameTime;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec3 position;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    if (color.a < 0.1) {
        discard;
    }

    float offset = mod(position.x + position.y, 750);
    float gameTimeMod = mod(GameTime * 75000, 750);

	// #653AA0
	if (vertexColor.r < 0.39142 && vertexColor.r > 0.39141 && vertexColor.g < 0.22478 && vertexColor.g > 0.22477 && vertexColor.b < 0.62007 && vertexColor.b > 0.62006) {
		if (gameTimeMod <= offset && gameTimeMod >= offset - 8) {
            color = texture(Sampler0, texCoord0) * vec4(1.0, 0.843, 0.0, 1) * ColorModulator;
        }
        else {
            color = texture(Sampler0, texCoord0) * vec4( vertexColor.b, 0.3294, 0.3294, 1) * ColorModulator;
        }
    }
    else if (vertexColor.r < 0.09689 && vertexColor.r > 0.09688 && vertexColor.g < 0.05426 && vertexColor.g > 0.05425 && vertexColor.b < 0.15501732 && vertexColor.b > 0.15501729) {
         if (gameTimeMod <= offset && gameTimeMod >= offset - 8) {
            color = texture(Sampler0, texCoord0) * vec4(0.243, 0.243, 0.243, 1) * ColorModulator;
        }
        else {
        color = texture(Sampler0, texCoord0) * vec4(vertexColor.b, 0.082, 0.082, 1) * ColorModulator;
        }
    }

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}