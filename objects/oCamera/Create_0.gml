/// @description Insert description here
// You can write your code in this editor

view_width = 800;
view_height = 600;

window_scale=1;

window_set_size(view_width*window_scale, view_height*window_scale);

alarm[0] = 1; // Need to centre the view a frame after setting the size. 

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);

