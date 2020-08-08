if !grabbed{
	
	sn += (pi * 2) / room_speed; 
	if sn >= pi * 2 {sn = 0;}
	y += sin(sn) * 2
	depth = -y;
}

//IF PLAYER TOUCHES ME, GRAB
if place_meeting(x, y, oPlayer){grabbed = true;}

if grabbed {
	
	x = oPlayer.x - 4;
	y = oPlayer.y - 7;
	depth = oPlayer.depth - 1;

}

//IF THE PLAYER CHANGES TIMELINE, DEACTIVATE GRAB
if global.ind != 0 and !instance_exists(oTerminal){grabbed = false;}



