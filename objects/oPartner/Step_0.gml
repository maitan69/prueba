event_inherited();

xx = x - detector.sprite_width/2
yy = y - detector.sprite_height/1.5;
detector.image_xscale = sprite_width/8 * 2;
detector.image_yscale = sprite_height/8 * 2;
depth = -y;

//IF THE BED MOVES, CHANGE DIALOG 
if global.ind == 1 
if !oPartnerFollower.follow
{

	if !global.doorUnlocked {

		if oBed.x == 96 {
		row = 1;
		}

	} else {

		row = 2;
	
		//CREATE DIALOG
		if !instance_exists(oPasswordInsert)
		{
			
			//CREATE DIALOG 
			if oPassWord.canInteract{
			
				with(detector){
					
					instance_create_depth(x, y, depth, oTextBox)
					
					//GET TEXT OF OBJECT
					oTextBox.row = creatorID.row;
					
					for(i = 0; i < array_length_2d(creatorID.text, oTextBox.row); i++){
					oTextBox.text[oTextBox.row, i] = creatorID.text[oTextBox.row, i];
					}
				}
				
				oPassWord.canInteract = false;
				
				//FLAG FOLLOW PLAYER
				follow = true;
			
			} else {
				
				//ADVANCE PAGE
				if keyboard_check_pressed(ord("Z")){
				with(detector){scr_dialog_create();}
				}
			}
		}
	}
}

//FOLLOW PLAYER
if follow 
and !instance_exists(oTextBox)
and dialogAfterPassword
{

	//MOVE MYSELF AND PUT IMPOSTER IN MY PLACE
	oToolManager.acomodateTools = false;
	oPartnerFollower.x = x;
	oPartnerFollower.y = y;
	x = 9999999999;
	
	dialogAfterPassword = false;
	oPartnerFollower.follow = true;

}

