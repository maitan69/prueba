if instance_exists(oPlayer){oPlayer.state = scr_frozen_state;}

if a > 1 and alarm[0] <= 0 {sig = -1}
a += 0.1 * sig;

if a >= 1 {
	
	//START CUTSCENE
	oCutsceneManager.state = scr_guard_cutscene;
	
	if alarm[0] == -4 {alarm[0] = room_speed * 2;}
	
	//DESTROY DIALOG BOX IF IT WAS HANGIN THERE
	if instance_exists(oTextBox){instance_destroy(oTextBox)}
}

if a < 0 {
	
	instance_destroy();

}
