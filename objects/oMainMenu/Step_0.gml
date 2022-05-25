/// @description Insert description here
// You can write your code in this editor

ScrControlsChk();

if ( menuConfirmTimer >= 0 ) // If menu confirm timer set, fade out and go to next room
{
	if ( menuConfirmTimer == menuConfirmFrames )
	{
		with ( oFadeTransition )
		{
			fadeOut = true;
			fadeIn  = false;
			fadeFrames = other.menuConfirmFrames;
			fadeTimer  = fadeFrames;
		}
	}
	if ( menuConfirmTimer == 0 ) { room_goto_next(); }
	menuConfirmTimer--;
}
else
{
	if ( menuScrollTimer < 0 )
	{
		var _menuMax = array_length_1d(menuName) - 1;
		var _press   = false;
		if ( inputUp   && !inputDown ) { menuSelect--; _press = true; } else
		if ( inputDown && !inputUp   ) { menuSelect++; _press = true; }
	
		if ( menuSelect < 0 )        { menuSelect = array_length_1d(menuName) - 1; }
		if ( menuSelect > _menuMax ) { menuSelect = 0;                             }
	
		// CHANGE SELECTION NOISE
		//if ( _press ) {
		//	audio_play_sound(SndSwitchSpell, 0, 0);
		//	menuScrollTimer = menuScrollFrames;
		//}
	}
	else
	{
		menuScrollTimer--;
	}
	
	
	if ( inputAction )
	{
		// SELECTION NOISE
		// audio_play_sound(SndGem, 0, 0);
		
		switch( menuName[menuSelect] )
		{
			case "Start Game":
				menuConfirmTimer = menuConfirmFrames;
				break;
			
			case "Quit Game":
				game_end();
				break;
		}
	}
	
}
