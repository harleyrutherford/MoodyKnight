/// @description Insert description here
// You can write your code in this editor

if (objToTrack != 0) {
	
	draw_sprite_ext(sprMinorEnemyHealthBack, 0, x, y, objToTrack.sprite_width*0.8 / 10, 1, 0, c_white, 1);
	draw_sprite_ext(sprMinorEnemyHealth, 0, x, y, lerp(0, objToTrack.sprite_width*0.8 / 10, (objToTrack.hp/objToTrack.hp_max)), 1, 0, merge_colour(c_red,c_green,(objToTrack.hp/objToTrack.hp_max)), 1);
	
}
