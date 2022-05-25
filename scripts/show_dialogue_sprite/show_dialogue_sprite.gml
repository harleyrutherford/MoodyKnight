/// @description show_text(text, namebox, draw box);
/// @param text
/// @param  namebox
/// @param  draw box
function show_dialogue_sprite(argument0, argument1, argument2, argument3, argument4) {
	
	dia_box = instance_create_depth(argument3, argument4, -1000, oDialogueBoxSprite);
	//the text that you want to display
	dia_box.text = argument0;
	//the name that you want to display
	dia_box.name = argument1;
	//whether or not you want to draw the dialogue box sprites
	//if not, it will center the text, good for cutscenes
	dia_box.draw = argument2;
	
	with(dia_box){
	    string_parse(text, "\\"); 
	    max_page = num_of_pages(text, "\\")
	}
	
	
	
	
}
