//CREATE MY VISION
if id != global.playerID {

 if myVisor == noone 
 and !death{
	 
	 myVisor = instance_create_depth(x, y, depth + 1, vision)
	 myVisor.myCreator = id;	 
 }
 
 //IF MY VISION TOUCH THE PLAYER, MAKE EXCLAMATION MARK
 with(myVisor){
 
	if place_meeting(x, y, playerVisorCollider)
	and visible
	{
		
		if !instance_exists(exclamationMark){
		
			instance_create_depth(myCreator.x + myCreator.sprite_width * 2, myCreator.y, myCreator.depth - 1, exclamationMark)
			oPlayer.state = scr_frozen_state;
		}
		
		//SHOOT TO PLAYER
		if exclamationMark.alarm[0] < 0 
		and !myCreator.shot
		{
			instance_create_depth(x, y, depth - 1, oBullet)
			myCreator.shot = true;
		}
	}
 }
 
 //BULLET PLAYER
 if keyboard_check_pressed(vk_control){
 instance_create_depth(x, y, depth - 1, oBullet);
 }
 

}

//I WILL ADOPT WHICHEVER STATE THE OBJECTS WITH MY SAME SPRITE HAVE

//FIND OBJECT WITH MY SAME SPRITE
if !oMenuChanger.enabled{

	var l = oMenuChanger.list 
	for (i = 0; i < ds_list_size(l); i++) {
	
		var inst = ds_list_find_value(l, i)
	
		if inst.sprite_index == sprite_index {
	
			sleep = inst.sleep;
		}
	} 

}


