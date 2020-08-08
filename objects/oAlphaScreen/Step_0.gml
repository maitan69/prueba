if instance_exists(oPlayer){oPlayer.state = scr_frozen_state;}

if a > 1 {sig = -1}
a += 0.1 * sig;

if a >= 1 {
	
	room_goto(rm);
}

if a < 0 {
	
	instance_destroy();
	
	if instance_exists(oPlayer){
    oPlayer.state = scr_move_state;
	}

}

if rm != noone 
and room == rm {

	if pX != 0
	and pY != 0 {
		
		oPlayer.x = pX;
		oPlayer.y = pY;
	}

}
