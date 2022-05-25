/// @description Insert description here
// You can write your code in this editor

// position camera after all movement completed. 
#macro view view_camera[0]
// set size of view
camera_set_view_size(view,view_width,view_height);
// set position of view. Centre on player, depends on if player centre is top left corner or not. 
if instance_exists(oPlayer)
{
	var _x = oPlayer.x-view_width/2;
	var _y = oPlayer.y-view_height/2;
	camera_set_view_pos(view,clamp(_x,0,room_width-view_width),clamp(_y,0,room_height-view_height));
}
