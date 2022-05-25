/// @description show_text(text, namebox, face sprite);
/// @param text
/// @param  namebox
/// @param  face sprite
function show_dialogue_draw(argument0, argument1, argument2, argument3, argument4) {
	
	dia_box = instance_create_depth(argument3, argument4, -1000, oDialogueBoxDraw);
	dia_box.text = argument0;
	dia_box.name = argument1;
	dia_box.face = argument2;
	
	with(dia_box){
	    string_parse(text, "\\"); 
	    max_page = num_of_pages(text, "\\")
	}
	
	
	
	
}
