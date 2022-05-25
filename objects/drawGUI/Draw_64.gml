/// @description Insert description here
// You can write your code in this editor

// Always draw player health bar

//draw_healthbar(20, 20, 258, 50, oPlayer.hp/oPlayer.hp_max*100, c_black, c_red, c_lime, 0, true, true);
draw_sprite(PlayerInfoUI,0,20,oCamera.view_height-20);

// Health (max health width = 191)
draw_sprite_part_ext(sprPlayerHealthBar,0,0,0,191*(oPlayer.hp/oPlayer.hp_max),16,24,oCamera.view_height-76,1,1,merge_color(c_red,c_green,oPlayer.hp/oPlayer.hp_max),1);

// Mana (max mana width = 193)
draw_sprite_part(sprPlayerManaBar,0,0,0,193*(oPlayer.mana/oPlayer.mana_max),8,24,oCamera.view_height-54);


// Item 1
draw_sprite(RedPotion,0,32,oCamera.view_height-42);
draw_text_transformed(2+20,oCamera.view_height-44,oPlayer.itemCount[0],0.7,0.7,0);

// Item 2
draw_sprite(BluePotion,0,52,oCamera.view_height-42);
draw_text_transformed(2+40,oCamera.view_height-44,oPlayer.itemCount[1],0.7,0.7,0);

// Item 3
draw_sprite(Scroll,0,64,oCamera.view_height-24);
draw_text_transformed(2+60,oCamera.view_height-44,oPlayer.itemCount[2],0.7,0.7,0);

// Item 4
draw_text_transformed(2+80,oCamera.view_height-44,oPlayer.itemCount[3],0.7,0.7,0);

// Item 5
draw_text_transformed(2+100,oCamera.view_height-44,oPlayer.itemCount[4],0.7,0.7,0);

// ItemSelectionHighlight
draw_sprite(ItemSelection,0,2+20*oPlayer.itemSelection,oCamera.view_height-44);


// XP Bar
draw_sprite_part(sprPlayerXPBar,0,0,0,81*(oPlayer.xp_total/oPlayer.xp_level),4,125,oCamera.view_height-42);
draw_text_transformed(208,oCamera.view_height-50,oPlayer.level,1,1,0);
