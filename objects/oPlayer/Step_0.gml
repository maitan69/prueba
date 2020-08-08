script_execute(state);
depth = -y;

if !place_meeting(x, y, oPlayerDetector){
collidingWith = noone;
}


//RECREATE GUARD'S DOOR DEPENDING ON GLOBAL VAR STATE
if room == room1 {
	
	if global.guardDoorUnlocked{
		
		if instance_exists(oKeyDoor){
		instance_destroy(oKeyDoor);
		}
	
	} else {
	
		if !instance_exists(oKeyDoor){
		instance_create_depth(x, y, oOpenDoor.depth - 1, oKeyDoor);
		}
	
	}

}

