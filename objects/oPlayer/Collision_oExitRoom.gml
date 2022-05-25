/// @description Insert description here
// You can write your code in this editor

if (exitTimer < 0 && enterTimer < 0) {
	
	slideTimer = -1; //Stops sliding + animation
	attackTimer = -1; 
	midAttack = false;
	
	exitTimer = exitFrames;
	exitStartX = x;
	exitStartY = y;

	with (other) {
		other.targetRoom = targetRoom;
		other.targetX = targetX;
		other.targetY = targetY;
		other.exitDirectionX = exitDirectionX;
		other.exitDirectionY = exitDirectionY;
	}
	
}
