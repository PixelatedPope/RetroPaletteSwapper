///pal_swap_reset();
//Simple shader reset.  You can just use shader_reset if you prefer.
if(Pal_Shader_Is_Set)
{
  shader_reset();
  Pal_Shader_Is_Set=false;
}
