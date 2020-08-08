//INTERACTING WITH OBJECTS
with(detector){
	
	if place_meeting(x, y, oPlayer){
		
		if keyboard_check_pressed(ord("Z")){
	
			//TV
			if creatorID == oTv.id 
			and global.powerSupply
			{
					if !instance_exists(oTerminal){
					instance_create_depth(x, y, depth, oTerminal)
					} else {instance_destroy(oTerminal)}
			}
			
			//OTHER INTERACTUABLE OBJECTS
			else
			{
				//IF INTERACTIVE FLAG IS TRUE
				if creatorID.canInteract {scr_dialog_create();}
			}
		}
	}
	
	//GET WHO WE'RE COLLIDING WITH RIGHT NOW
	if place_meeting(x, y, oPlayer){
	oPlayer.collidingWith = creatorID;
	} 
}

depth = -y;


