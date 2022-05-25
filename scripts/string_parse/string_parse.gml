function string_parse(argument0, argument1) {
	//string_parse(string to check, symbol to mark new page)
	var text = argument0; symbol = argument1; page[0] = ""; page_break = 0
	var text_length = string_length(text)
	var page_number = 0;

	for(i = 1; i < text_length; i++) {

	    if string_pos(symbol, text) = i{
	        page[page_number] = string_copy(text, 1, i-1)
	        page_number ++;
	        text = string_delete(text, 1, i+1)
	        i = 0;
	    }
	}
	page[page_number] = text



}
