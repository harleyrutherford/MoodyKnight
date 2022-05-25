/// @description Insert description here
// You can write your code in this editor

if (enterTimer > 0) {
	
	if (enterTimer == enterFrames) {
		with ( oFadeTransition)
		{
			fadeOut = false;
			fadeIn = true;
			fadeFrames = other.enterFrames;
			fadeTimer = fadeFrames;
		}
	}
		
	enterTimer--;
		
	if (enterTimer == 0) {
		// A place to run anything that should immediately happen when entering room
		enterTimer--; //sets back to -1 again. 
		alarm[0] = 60;
	}
}

if (exitTimer > 0) {
	
	// fade screen gradually
	if (exitTimer == exitFrames) {
		with ( oFadeTransition )
		{
			fadeOut = true;
			fadeIn  = false;
			fadeFrames = other.exitFrames;
			fadeTimer  = fadeFrames;
		}
	}
		
	exitTimer--;
	//show_debug_message(exitTimer)
		
	if ( exitTimer == 0 ) { 
		
		room_goto_next();
		
	}
}




