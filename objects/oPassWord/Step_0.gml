event_inherited();
depth = oBed.depth + 1;

xx = x;
yy = y;

//CHANGE TEXT DEPENDING IF ENERGY IS ON
if global.powerSupply{
text[0, 0] = "-Insert password?"
} else {
text[0, 0] = "I can't use this. The power has been cut off."
}


if savedX == 0 {savedX = detector.x;}

if !canInteract {
	
	detector.x = 999999
	
} else {

	detector.x = savedX;
	
}

//IF TIMELINE IS NOT 1, WE CAN ALWAYS INTERACT
if global.ind != 1 {detector.x = savedX;}
