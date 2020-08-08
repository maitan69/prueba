//DESTROY THE SOLID THAT BLOCKS THE DOOR
with(o_solid){

	if image_blend == c_aqua 
	and sprite_index == sprite3{
	instance_destroy();
	}

}

var d = instance_create_depth(oDoor.x, oDoor.y, oDoor.depth - 1, oOpenDoor);
d.rm = room1;
instance_destroy(oDoor);
instance_destroy(oDoorLock);
