/// @description Draw shader
// You can write your code in this editor
shader_set(shd_outline)
shader_set_uniform_f(upixelW, textW)
shader_set_uniform_f(upixelH, textH)
draw_self()
shader_reset()