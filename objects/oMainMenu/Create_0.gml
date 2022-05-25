/// @description Insert description here
// You can write your code in this editor

menuName[0] = "Start Game";
menuName[1] = "Options";
menuName[1] = "Quit Game";

menuSelect = 0;

menuScrollFrames = 5;
menuScrollTimer  = menuScrollFrames;

menuConfirmFrames = 30;
menuConfirmTimer  = -1;

with ( oFadeTransition )
{
	fadeOut = false;
	fadeIn  = true;
	fadeFrames = 30;
	fadeTimer  = fadeFrames;
}


// Destroy any objects which may have been constant, like a spawner
//with ( ObjSnowSpawner   ) { instance_destroy(); }

// STOP player music
//audio_stop_sound(GameController.musicPlaying);
