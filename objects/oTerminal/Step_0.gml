//NAVIGATION
var key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
if key != 0 {global.ind += key}
if global.ind < 0 {global.ind = array_length_1d(option) - 1} 
if global.ind > array_length_1d(option) - 1 {global.ind = 0}

//LOAD VARIABLES OF CURRENT TIMELINE
oBed.x = global.timeLine[global.ind, 0];
global.powerSupply = global.timeLine[global.ind, 1];
oPowerSupply.image_index = global.timeLine[global.ind, 2];
oPowerSupply.row = global.timeLine[global.ind, 3];
oBed.canInteract = global.timeLine[global.ind, 4];
global.doorUnlocked = global.timeLine[global.ind, 5];
oToolManager.acomodateTools = global.timeLine[global.ind, 6];
oPartnerFollower.follow = global.timeLine[global.ind, 7];
oPassWord.canInteract = global.timeLine[global.ind, 8];
global.guardKey = global.timeLine[global.ind, 9];
global.guardDoorUnlocked =	global.timeLine[global.ind, 10];
oGuard.x = global.timeLine[global.ind, 11];
oGuard.y = global.timeLine[global.ind, 12];

