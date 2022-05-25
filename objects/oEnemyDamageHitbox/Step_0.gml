/// @description Insert description here
// You can write your code in this editor

if (variable_instance_exists(id,"damageFrom")) {
	if (!damageFrom.midAttack) {instance_destroy();}
	if (damageFrom.deathTimer>0) {instance_destroy();}
}
