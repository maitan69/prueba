if instance_exists(oPlayer) {oPlayer.state = scr_frozen_state;}

//INPUT
if string_length(password) < 11{

	if keyboard_check_pressed(ord("0"))
	or keyboard_check_pressed(ord("1"))
	or keyboard_check_pressed(ord("2"))
	or keyboard_check_pressed(ord("3"))
	or keyboard_check_pressed(ord("4"))
	or keyboard_check_pressed(ord("5"))
	or keyboard_check_pressed(ord("6"))
	or keyboard_check_pressed(ord("7"))
	or keyboard_check_pressed(ord("8"))
	or keyboard_check_pressed(ord("9")){
		
		password = string_insert(chr(string(keyboard_key)), password, string_length(password) + 1)
		
	} else {
		
				for (var i = 0; i <= 9; i++)
				{

					if keyboard_check_pressed(96 + i){

					password = string_insert(string(i), password, string_length(password) + 1)
				
				    }
				}
	}
}

//ERASING
if keyboard_check_pressed(vk_backspace){
	
 password = string_delete(password, string_length(password), 1)
 
}

//ENTERING PASSWORD
if keyboard_check_pressed(vk_enter){

	if password != correctPassword {
		
	message = "Wrong Password."
	color = c_red;
	alarm[1] = room_speed/1.5;
	
	} else {
	
	global.doorUnlocked = true;
	
	}

}

if alarm[1] < 0 and alarm[1] != -4{
	
	message = "Insert Numeric Password." 
	color = c_black;
	
}

//STAY UNLOCKED
if global.doorUnlocked {

	message = "Door unlocked."
	color = c_green;

}

//DESTROY
if keyboard_check_pressed(vk_escape){
	
	instance_destroy();
	if instance_exists(oPlayer){oPlayer.state = scr_move_state;}
	oPassWord.x = passX; 

}
