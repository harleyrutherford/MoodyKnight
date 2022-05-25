/// @description Insert description here
// You can write your code in this editor

// Destroy if player is no longer attacking
if (oPlayer.midAttack == false) {instance_destroy()};

// Move with player
x = oPlayer.x + lengthdir_x(dist,dir);
y = oPlayer.y + lengthdir_y(dist,dir);
