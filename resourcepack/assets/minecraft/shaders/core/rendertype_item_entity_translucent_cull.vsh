#version 150

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;
uniform float FogStart;

uniform vec3 Light0_Direction;
uniform vec3 Light1_Direction;

flat out int isGUI;
out float zpos;
out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord1;
out vec4 normal;

void main() {
    zpos = Position.z;
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
	
	isGUI = int(ProjMat[3][3] != 0.0);

    vertexDistance = fog_distance(Position, FogShape);
	vec4 lightColor = vertexDistance <= 800 ? minecraft_sample_lightmap(Sampler2, UV2) : texelFetch(Sampler2, UV2 / 16, 0); // Added this simply for better compat with light-altering packs.
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * lightColor;
    texCoord0 = UV0;
    texCoord1 = UV1;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);
}