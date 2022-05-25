/// @description Insert description here
// You can write your code in this editor

length = string_length(page[current_page]);

if (char_pos <= length) {
        temp_char = string_char_at(page[current_page], char_pos);
        output = string(output) + string(temp_char);
        char_pos += 1;
        speed_inc = 0;
        if (oPlayer.inputActionPress == true) {
            output = page[current_page];
            char_pos = length + 1;
        }
} else {
    if (oPlayer.inputActionPress == true) {
        if (current_page < max_page) {
            current_page += 1;
            char_pos = 1;
            speed_inc = 0;
            temp_char = "";
            output = "";
        }
        else {
            global.talking = false;
            instance_destroy();
        }
    }
}

