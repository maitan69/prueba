var ind = 0;
oPlayer.state = scr_frozen_state;

//BOTH CHARACTERS ON FLOOR
if moment == ind {

	oPlayer.x = 160;
	oPlayer.y = 144;
	oPlayer.image_angle = 270;
	oPlayer.sprite_index = sprite1;
	moment++
	
}ind++
//////////////////////////

//TIME
if moment == ind {
	
	//WAIT UNTIL ALPHA IS DESTROYED
	if !instance_exists(oAlphaScreenCutscene){
		
		alarm[0] = room_speed;
		moment++;
	}
	
}ind++
if moment == ind {}ind++
//////////////////////////

//GUARD ENTERS CELL
if moment == ind {

	instance_create_depth(oDoor.x, oDoor.y, oDoor.depth + 1, oOpenDoor);
	oGuard.x = oDoor.x + oDoor.sprite_width/2;
	oGuard.y = oDoor.y + oDoor.sprite_height;
	global.doorUnlocked = true;
	moment++;
	
}ind++
//////////////////////////

//TIME
if moment == ind {

alarm[0] = room_speed;
moment++;
	
}ind++
if moment == ind {}ind++
//////////////////////////

//DIALOG
if moment == ind {

	instance_create_depth(x, y, depth, oTextBox)
					
	//GET TEXT OF OBJECT
	oTextBox.row = 0;	
	oTextBox.text[0, 0] = "?Lunch is ready, you piece of-";
	oTextBox.text[0, 1] = "?Huh?! Holy...";
	moment++;
	
}ind++
//////////////////////////

//ADVANCE DIALOG
if moment == ind {

    if keyboard_check_pressed(ord("Z")){
	
		if oTextBox.pag < array_length_2d(oTextBox.text, oTextBox.row) - 1{oTextBox.pag++} else{
		instance_destroy(oTextBox);
		moment++
		}
	}
	
}ind++

//GUARD APPROACHES YOU
if moment == ind {
	
	with(oGuard){
	
		if distance_to_object(oPlayer) > 10{
	
			//GO NEAR THE PLAYER
			var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
			x += lengthdir_x(2, dir);
			y += lengthdir_y(2, dir);
	   } else {oCutsceneManager.moment++;}
	}
	
}ind++
//////////////////////////


//TIME
if moment == ind {

alarm[0] = room_speed;
moment++;
	
}ind++
if moment == ind {}ind++
//////////////////////////


//PAINT SCREEN BLACK AND DO PUNCH EFFECTS
if moment == ind {
	
instance_create_depth(x, y, depth, oBlackScreenPunch);
moment++;
	
}ind++
//////////////////////////

//ONCE THE SCREEN DESTROYS, KNOCK GUARD AND MOVE AGAIN
if moment == ind {
	
if !instance_exists(oBlackScreenPunch){

	oGuard.image_angle = 90;
	oPlayer.image_angle = 0;
	oPlayer.sprite_index = sprite0;
	oPlayer.state = scr_move_state;
	
	//WE HAVE THE KEY
	global.guardKey = true;
	
	instance_destroy(oDeadPartner.detector);
	instance_destroy();
	
}
	
}ind++
//////////////////////////











//TIME

//GUARD DIALOG

//GUARD APPROACHES

//BLACK SCREEN AND PUNCH SOUNDS

//FADE BLACK SCREEN OUT AND. GUARD IS UNCONSCIOUS, MAKE DIALOG INDICATING YOU HAVE THE KEY

//PLAYER CAN MOVE