attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    float sat = dot(v_vColour.rgb,vec3(0.3,0.59,0.11));
    vec3 f = mix(vec3(sat,sat,sat),texture2D(gm_BaseTexture,v_vTexcoord).rgb,v_vTexcoord.r)*(1.0 - v_vTexcoord.g);
    
    gl_FragColor = vec4(f,1.0);
}

