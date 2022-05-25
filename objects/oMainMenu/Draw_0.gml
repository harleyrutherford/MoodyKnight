/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
//draw_set_font(FntReady);

for ( var i = 0; i < array_length_1d(menuName); i++; )
{
	if ( menuSelect == i ) { draw_set_color(c_white); } else { draw_set_color(c_gray); }
	draw_text(room_width / 2, ( room_height / 2 ) + ( i * 40 ), menuName[i] );
}

draw_set_color(c_white);
//draw_set_font(FntTitleScreenInfo);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(room_width - 4, room_height - 4, "WASD to Move, L to attack\nSPACE to select, L_SHIFT to slide\n1-5/K to select/use item." );

draw_set_halign(fa_left);
draw_text(4, room_height - 4, "MoodyGaming, 2022" );


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
