///pal_swap_set(shader, palette_sprite_index, palette_index,palette is surface);
if (argument[2]==0) exit;
shader_set(argument[0]);
Pal_Shader_Is_Set=true;
var _pal_sprite=argument[1];
var _pal_index=argument[2];
if(!argument[3])
{   //Using a sprite based palette

    var tex = sprite_get_texture(_pal_sprite, 0);
    var UVs = sprite_get_uvs(_pal_sprite, 0);
    
    texture_set_stage(Pal_Texture, tex);
    texture_set_interpolation_ext(Pal_Texture, 1)
    
    var texel_x = texture_get_texel_width(tex);
    var texel_y = texture_get_texel_height(tex);
    var texel_hx = texel_x * 0.5;
    var texel_hy = texel_y * 0.5;
    
    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
    shader_set_uniform_f(Pal_UVs, UVs[0] + texel_hx, UVs[1] + texel_hy, UVs[2] + texel_hx, UVs[3] + texel_hy);
    shader_set_uniform_f(Pal_Index, _pal_index);
}
else
{   //Using a surface based palette
    var tex = surface_get_texture(_pal_sprite);
    
    texture_set_stage(Pal_Texture, tex);
    texture_set_interpolation_ext(Pal_Texture, 1)
    
    var texel_x = texture_get_texel_width(tex);
    var texel_y = texture_get_texel_height(tex);
    var texel_hx = texel_x * 0.5;
    var texel_hy = texel_y * 0.5;
    
    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
    shader_set_uniform_f(Pal_UVs, texel_hx, texel_hy, 1.0+texel_hx, 1.0+texel_hy);
    shader_set_uniform_f(Pal_Index, _pal_index);
}
