window_set_size(1280, 720)
window_set_position(50, 50)
global.ind = 0;
global.powerSupply = true;
global.doorUnlocked = false;
global.guardKey = false;
global.guardDoorUnlocked = false;

//FILL IN INITIAL DATA FOR ALL TIMELINES
for(i = 0; i < 3; i++){

    global.timeLine[i, 0] = oBed.x;
	global.timeLine[i, 1] = global.powerSupply;
	global.timeLine[i, 2] = oPowerSupply.image_index;
	global.timeLine[i, 3] = oPowerSupply.row;
	global.timeLine[i, 4] = oBed.canInteract;
	global.timeLine[i, 5] = global.doorUnlocked;
	global.timeLine[i, 6] = oToolManager.acomodateTools;
	global.timeLine[i, 7] = oPartnerFollower.follow;
	global.timeLine[i, 8] = oPassWord.canInteract;
	global.timeLine[i, 9] = global.guardKey;
	global.timeLine[i, 10] = global.guardDoorUnlocked;
	global.timeLine[i, 11] = oGuard.x;
	global.timeLine[i, 12] = oGuard.y;
	
} 


	
