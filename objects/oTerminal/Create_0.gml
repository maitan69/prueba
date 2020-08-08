x = -999999
oPlayer.state = scr_frozen_state;
option[0] = "the screwdriver"
option[1] = "you partner's help"
option[2] = "the corpse"
sinValue = 0;

//SAVE STATE OF CURRENT TIMELINE
global.timeLine[global.ind, 0] = oBed.x;
global.timeLine[global.ind, 1] = global.powerSupply;
global.timeLine[global.ind, 2] = oPowerSupply.image_index;
global.timeLine[global.ind, 3] = oPowerSupply.row;
global.timeLine[global.ind, 4] = oBed.canInteract;
global.timeLine[global.ind, 5] = global.doorUnlocked;
global.timeLine[global.ind, 6] = oToolManager.acomodateTools;
global.timeLine[global.ind, 7] = oPartnerFollower.follow;
global.timeLine[global.ind, 8] = oPassWord.canInteract;
global.timeLine[global.ind, 9] = global.guardKey;
global.timeLine[global.ind, 10] = global.guardDoorUnlocked;
global.timeLine[global.ind, 11] = oGuard.x;
global.timeLine[global.ind, 12] = oGuard.y;









	

	



