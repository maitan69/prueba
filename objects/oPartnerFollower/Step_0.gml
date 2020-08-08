//CREATE A DOT IN PREVIOUS PLAYER'S STEPS
if oPlayer.xaxis != 0
or oPlayer.yaxis != 0 {
		
		var d = instance_create_depth(oPlayer.x, oPlayer.y, depth - 1, oDot)	
		ds_list_add(wayList, d)
		d.wayID = wayIDhistory;
		wayIDhistory++	
	
		//DESTRPY THE LAST ITEMS OF THE LIST
		if ds_list_size(wayList) > 20 {
		
			while(ds_list_size(wayList)) > 20 {
			ds_list_delete(wayList, 0);
			var object = ds_list_find_value(wayList, 0)
			instance_destroy(object);
			}
	
		}
	
		//DESTROY THE LONELY ONE
		with(oDot){if wayID == 0 {instance_destroy();}}
	
}
	
	//GET THE LAST ONE
	if ds_list_size(wayList) > 10 
	{	
	
		for (i = 0; i < instance_number(oDot); i++){
	
			var currentObj = instance_find(oDot, i)
			lastOnList = ds_list_find_value(wayList, 1)
	
			if currentObj.id == lastOnList.id
			{
				currentObj.image_alpha = .4;
				
				if follow {
					
				//IF I'M TOO FAR AWAY FROM PLAYER, FIRST APPROACH AND FREEZE PLAYER WHILE DOING SO
				if approachPlayer 
				{
				
					if !place_meeting(x, y, lastOnList){
					
					    oPlayer.state = scr_frozen_state;
	
						//GO NEAR THE PLAYER
						var dir = point_direction(x, y, lastOnList.x, lastOnList.y);
						x += lengthdir_x(2, dir);
						y += lengthdir_y(2, dir);
	
					} else {
						
						oPlayer.state = scr_move_state;
						approachPlayer = false;
						
					}
				
				} else {
				
					x = currentObj.x;
					y = currentObj.y;
				
				}
				
				}
				
			} else {
				
				currentObj.image_alpha = 1;
			
			}
		}
	}

depth = -y;

//IF I'M ON ROOM 2 AND TIMELINE IS NOT ONE, DON'T FOLLOW PLAYER
if room == room1 
and global.ind != 1 {follow = false;}

//IF FOLLOW IS OFF, GET OUT OF SCREEN
if !follow {
x = 99999;
}

//HARDCODING: MOVE SCREDRIVER AND CORPSE IF WE DEACTIVE THE TOOL MANAGER
if follow {
if instance_exists(oScrewDriver){oScrewDriver.x = 99999}
if instance_exists(oDeadPartner){oDeadPartner.x = 99999}
}
