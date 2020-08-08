//IF THE POWER SUDDENLY GOES ON AGAIN, DESTROY ME AND GET BACK DOOR
if global.powerSupply {
	
	if !global.doorUnlocked {
	
	instance_create_depth(x, y, depth - 1, oDoor)
	instance_destroy();

	}	

}

//GOING TO THE NEXT ROOM
if place_meeting(x, y, oPlayer){

	if !instance_exists(oAlphaScreen){
	var a = instance_create_depth(x, y, depth, oAlphaScreen)
	a.rm = rm;
	a.pX = pX;
	a.pY = pY;
	}

}
