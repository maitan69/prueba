event_inherited();
depth = oBed.depth + 1;

//CHANGE INTERACTION DEPENDING IF PLAYER HAS SCREWDRIVER
if oScrewDriver.grabbed {
	
	if row == 0 {row = 1;}

} else {
	
	//ONLY IF IT WASN'T OPENED YET
	if image_index == 0 {row = 0;}
	
}

//CHANGE ACTION AFTER DIALOG DEPENDING OF CIRCUMSTANCES
if oScrewDriver.grabbed {
	yesScript = scr_open_circuit_breaker;
} else {
	yesScript = scr_frozen_state;
}

//IF WE DON'T HAVE A SCREDRIVER BUT THE TAPE IS ALREADY OPEN, WE CAN STILL CUT OFF
if !oScrewDriver.grabbed 
and oPowerSupply.image_index == 1 {
	
yesScript = scr_open_circuit_breaker;

}

