// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrUseItem(){

if (itemSelection == 1) { // Red potion
	hp = min(hp+12,hp_max);
	itemCount[0]--;
} else if (itemSelection == 2) { // Blue potion
	mana = min(mana+12,mana_max);
	itemCount[1]--;
} else if (itemSelection == 3) { // Scroll
	scrollActive = true;
	alarm[0] = 600; // scroll active for 10s
	itemCount[2]--;
} else if (itemSelection == 4) { // 
	itemCount[3]--;
} else if (itemSelection == 5) { // 
	itemCount[4]--;
}

}