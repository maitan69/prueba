//ONLY IF WE CHOOSED YES
if instance_exists(oTextBox){
	
	if oTextBox.ind == 0 {
	
		if !instance_exists(oAlphaScreenCutscene){
			instance_create_depth(x, y, depth, oAlphaScreenCutscene);
		}
	}
}

//MOVE COLLISIONER TO AVOID CREATING DIALOG AGAIN
oDeadPartner.detector.x = 9999999;