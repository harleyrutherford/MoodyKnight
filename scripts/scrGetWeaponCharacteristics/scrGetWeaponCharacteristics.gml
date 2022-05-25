// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGetWeaponCharacteristics(){
	
	weaponHeight = sprite_get_height(oPlayer.weaponSelected);
	weaponWidth = sprite_get_width(oPlayer.weaponSelected);
	
	if (oPlayer.weaponSelected == Greatsword) {
		weaponDamage = 5;
	} else if (oPlayer.weaponSelected == Woodensword) {
		weaponDamage = 1;
	}
	
}