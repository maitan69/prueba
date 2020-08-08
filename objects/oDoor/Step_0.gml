event_inherited();
if global.powerSupply {
	
	row = 0;
	yesScript = scr_frozen_state;

} else {
	
	row = 1;
	yesScript = scr_open_door;
	
}

//DESTROY MYSELF IF GLOBAL DOOR IS UNLOCKED
if global.doorUnlocked {scr_open_door();}
