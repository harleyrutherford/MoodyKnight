/// @description Insert description here
// You can write your code in this editor

talk_area = collision_rectangle(x-(sprite_width/2)-20,y-(sprite_height/2)-20,x+(sprite_width/2)+20,y+(sprite_height/2)+20,oPlayer,0,1);

//This checks if player is within the collision rectangle and presses the "action" key
//and creates the dialogue box object
if (talk_area != noone) {
    if (oPlayer.inputActionPress == true && interacting == false) {
    
        //this variable sets the NPC to "interacting" so the object knows that it's
        //talking to the player and wont create multiple dialogue boxes
        interacting = true;
        
        //this sets the player to "interacting" so he can't move while its talking
        //talking to the NPC
        oPlayer.interacting = true;
        
        if (dialogue_box_type == 0) {
            //0 to show a sprite based dialogue box (Appears above talking NPC)
            show_dialogue_sprite(text, name, 1, x, y-(sprite_height/2));
        }
        //if (dialogue_box_type = 1) {
        //    //1 to show a drawing based dialogue box (good for if speaker is off screen)
        //    show_dialogue_draw(text, name, face);
        //}
    }
    
    //This turns off all of the interacting variables and waits until after the 
    //dialogue object is destroyed to do so
    if (oPlayer.inputActionPress == true) && (interacting == true){
        if (!instance_exists(oDialogueBoxDraw)) && (!instance_exists(oDialogueBoxSprite)) {
            interacting = false;
            oPlayer.interacting = false;
        }
    }
}

// Make object be behind player if player.y < y. 
if (oPlayer.bbox_bottom < bbox_bottom) {depth = oPlayer.depth-1;}
else {depth = oPlayer.depth+1};
