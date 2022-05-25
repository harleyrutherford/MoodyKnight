/// @description Insert description here
// You can write your code in this editor

sprite_index = MKnightIdle;
image_index = 0;
image_speed = 1;
speed = 0; // speed defines non-input-based movement. Will auto-move in direction at speed. 

hp_max = 20;
hp = hp_max;
mana_max = 20;
mana = mana_max;

invulnerableFrames = 30;
invulnerableTime = -1;

interacting = false;

itemSelection = 1;
itemCount = [5,5,5,0,0];
health_potion_max = 5;
mana_potion_max = 5;
scroll_max = 5;
itemFrame = 0; // For items with multiple frames


itemUseFrames = 30;
itemUseTimer = -1;
scrollActive = false;

// Options when transitioning to a new room
targetRoom = Room1;
targetX = 0;
targetY = 0;

slideFrames = 30;
slideTimer = -1;
slideDirX = 0;
slideDirY = 0;
	
midAttack = false;
weaponEquipped = true;
weaponSelected = Greatsword;
attackFrames = 25;
attackTimer = -1;
attackDir = 1; //1,-1 matching image xscale

// Drawing weapon on character
weaponOffsetX = 0;
weaponOffsetY = 0;
weaponImageFrame = 0;
weaponXScale = 1;
weaponYScale = 1;
weaponAngle = 0;
weaponColour = c_white;
weaponAlpha = 1;
itemType = RedPotion;
itemX = 0;
itemY = 0;
itemAngle = 0;


ScrPlayerInitMovement(); // Some initialization variables. 

// variables for entering/exiting rooms, winning, and dying. 
exitFrames = 30;
exitTimer  = -1;
exitStartX = x;
exitDirectionX = 0;
exitDirectionY = 0;

enterFrames = 30;
enterTimer  = 30;
enterDirectionX = 0;
enterDirectionY = 0;

xp_total = 0;
xp_level = 100;
level = 1;

winFrames = 120;
winTimer  = -1;

deathFrames = 30;
deathTimer  = -1;
