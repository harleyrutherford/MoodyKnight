// Script: Checks for player inputs

function ScrControlsChk(){
	
	//Reset the inputs.
	inputLeft         = false;
	inputRight        = false;
	inputUp           = false;
	inputDown         = false;
	
	inputAction       = false;
	inputActionPress  = false;
	inputActionRel    = false;
	
	inputAttack       = false;
	inputAttackHold   = false;
	inputAttackRelease= false;
	inputSwitch       = false;
	inputPause        = false;
	inputSlide		  = false;
	
	input1			  = false;
	input2			  = false;
	input3			  = false;
	input4			  = false;
	input5			  = false;
	
	inputItemUse	  = false;
	
	//Get inputs from keyboard.
	
	if ( keyboard_check(ord("A")) ) { inputLeft  = true; }
	if ( keyboard_check(ord("D")) ) { inputRight = true; }
	if ( keyboard_check(ord("W")) ) { inputUp    = true; }
	if ( keyboard_check(ord("S")) ) { inputDown  = true; }
	
	if ( keyboard_check_pressed(ord("1")) ) { input1  = true; }
	if ( keyboard_check_pressed(ord("2")) ) { input2  = true; }
	if ( keyboard_check_pressed(ord("3")) ) { input3  = true; }
	if ( keyboard_check_pressed(ord("4")) ) { input4  = true; }
	if ( keyboard_check_pressed(ord("5")) ) { input5  = true; }
	
	if ( keyboard_check_pressed(ord("K")) ) { inputItemUse  = true; }
	
	if ( keyboard_check(vk_space) )				{ inputAction		= true; } // Action
	if ( keyboard_check_pressed(vk_space) )		{ inputActionPress  = true; } // Action Press
	if ( keyboard_check_released(vk_space) )	{ inputActionRel    = true; } // Action Release

	if ( keyboard_check_pressed (ord("L")) ) { inputAttack        = true; } // Attack
	if ( keyboard_check         (ord("L")) ) { inputAttackHold    = true; } // Charging attacj
	if ( keyboard_check_released(ord("L")) ) { inputAttackRelease = true; } // End Charge

	if ( keyboard_check_pressed(vk_shift) ) { inputSlide = true; } //Switch weapons

	if ( keyboard_check_pressed(vk_tab) ) { inputSwitch = true; } //Switch weapons

	if ( keyboard_check_pressed(vk_escape) ) { inputPause = true; } // Pause
	
	
	
}