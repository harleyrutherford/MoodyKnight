// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrSpriteChoice(){
	

if (slideTimer >= 0) { // Sliding or Lunging
	if (!midAttack) {sprite_index = MKnightSlide;}
	else {
		sprite_index = MKnightLunge;
	}
	
}
else if (midAttack) { // If attacking while not sliding
	sprite_index = MKnightAttack;
} else if (itemUseTimer > 0) {
	sprite_index = MKnightItemUse;
} else if (enterTimer >= 0 || exitTimer >= 0 || (inputLeft+inputRight+inputUp+inputDown) > 0) {
	sprite_index = MKnightRun; 
} else sprite_index = MKnightIdle;

}