/// @description Respawn player if dead


if ( respawning ) // move player to respawn location, sets timer to fade in.
{
	with ( ObjPlayer )
	{
		x = other.cpStoreX;
		y = other.cpStoreY;
		
		appearTimer = appearFrames;
		enterTimer  = -1;
	}
	
	respawning = false;
}

// Do stuff with music playing
//if ( !is_undefined( musicPlaying ) )
//{
//	if ( audio_is_playing(musicPlaying) )
//	{
//		var _name = audio_get_name(musicPlaying);
//		var _trackPos = audio_sound_get_track_position(musicPlaying);
//		
//		switch ( _name )
//		{
//			case "BgmBossDi":
//				//if ( _trackPos >= 57 ) { audio_sound_set_track_position(musicPlaying, _trackPos - 28.850 ) }
//				break;
//		}
//	}
//}

// Do stuff to make variable blackground (not really relevant for top-down game)
//var vX = camera_get_view_x(view_camera[0]);
//var vY = camera_get_view_y(view_camera[0]);
//
//var _layer = layer_get_id("Background");
//layer_x(_layer, vX * 0.75);
//layer_y(_layer, vY * 0.75);
//
//var _layer = layer_get_id("TileTerrainFg");
//layer_y(_layer, 4 + ( sin(tick * 0.05) * 4 ) );

//tick++;






