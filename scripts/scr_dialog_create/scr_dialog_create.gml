//CREATE TEXT OBJECT AND GET THE TEXT OF THE CURRENT INTERACTED OBJECT
if !instance_exists(oTextBox){
					
	instance_create_depth(x, y, depth, oTextBox)
					
	//GET TEXT OF OBJECT
	oTextBox.row = creatorID.row;
					
	for(i = 0; i < array_length_2d(creatorID.text, oTextBox.row); i++){
	oTextBox.text[oTextBox.row, i] = creatorID.text[oTextBox.row, i];
	}
				
} else {
				
	//IF ALREADY CREATED, ADVANCE PAGE
	if oTextBox.pag < array_length_2d(oTextBox.text, oTextBox.row) - 1{
		
	oTextBox.pag++;
	//RESTART YESNO
	oTextBox.yesNoFlag = false;
	
	} else {
						
		//IF WE HAVE SOME SCRIPT THAT WE'D LIKE TO HAPPEN AFTER TALKING, EXECUTE IT HERE
		script_execute(creatorID.executeAfterTalking);
		
		//IF THERE WAS A "YES/NO" AND WE PRESS Z, EXECUTE YES SCRIPT 
		if oTextBox.ind == 0 and oTextBox.yesNoFlag 
		{script_execute(creatorID.yesScript);};
						
		//DESTROY
		instance_destroy(oTextBox);
	}
	
	
	
	//HARDCODING FOR THE ONLY TIME A YES/NO HAPPENS NOT ON THE LAST PAGE
	if instance_exists(oDoor)
	and oPlayer.collidingWith.id != oDoor.id
	{
		if instance_exists(oDeadPartner)
		and creatorID.id == oDeadPartner.id {
		
			if instance_exists(oTextBox){
		
				if oTextBox.ind == 0 and oTextBox.yesNoFlag 
				{script_execute(creatorID.yesScript);};
		
				if oTextBox.ind == 1 {
				instance_destroy(oTextBox);
				}
			}
		}
	}
	
}

