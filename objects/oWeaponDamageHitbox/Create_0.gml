/// @description Insert description here
// You can write your code in this editor

weaponDamage = 1;
scrGetWeaponCharacteristics();

// Multiply damage if scroll active
if (oPlayer.scrollActive) {weaponDamage = weaponDamage*2};

// Get position relative to player (to move with player, or continue direction)
dist = distance_to_object(oPlayer);
dir = point_direction(oPlayer.x,oPlayer.y,x,y);
