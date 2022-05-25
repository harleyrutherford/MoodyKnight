function draw_page(argument0, argument1) {
	//draw_page(string, speed, x, y, line spacing, width)
	var text = argument0;
	var text_speed = argument1;
	var temp_char = ""; output = ""; speed_inc = 0; char_pos = 1;

	length = string_length(text);

	if (speed_inc <= text_speed){
		speed_inc += 1;
	}
	else {
		temp_char = string_char_at(text, char_pos);
		char_pos += 1;
		speed_inc = 0;
	}


	return output;



}
