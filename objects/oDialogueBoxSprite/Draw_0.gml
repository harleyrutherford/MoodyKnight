/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
// draw_set_font(fontDefault); // Use for custom font;

//This code draws the sprites for the name box background at the correct dimensions
if (draw == true) {
    //left side of the name box
    draw_sprite(sprTextNameL, 0, x-(sprite_width/2)+4, y-sprite_height);
    //checks how long the name box needs to be and draws the sprite
    for(var i = 0; i <= string_width(string_hash_to_newline(name)); i++) {
        draw_sprite_ext(sprTextNameM, 0, x-(sprite_width/2)+4+i, y-sprite_height, 1, 1, 0, c_white, 1);
    }
    //right side of the name box
    draw_sprite(sprTextNameR, 0, x-(sprite_width/2)+4+string_width(string_hash_to_newline(name)), y-sprite_height);
}

//DRAW NAME
draw_text(x-(sprite_width/2)+4, y-sprite_height-25, string_hash_to_newline(string(name)));

//DRAW DIFFERENT PAGES
if (current_page <= max_page) {
    //DRAW THE TEXTBOX BACKGROUND
    if (draw==true) {
        draw_sprite_ext(sprite_index, image_index, x, y,1,1,0,c_white,1);
        draw_text_ext(x-(sprite_width/2)+4, y-sprite_height, string_hash_to_newline(output), 11, 90);
    }
    //DONT DRAW THE TEXTBOX BACKGROUND
    if (draw==false) {
        draw_set_halign(fa_center);
        draw_text_ext(viewx + vieww/2, viewy + viewh-50+9, string_hash_to_newline(output), 11, 90);
    }
    //RESET FONT ALIGNMENT
    draw_set_halign(fa_left);
}


