if instance_exists(oDoor){
	
	depth = oDoor.depth - 1;
	x = oDoor.x;
	y = oDoor.y;
} else {instance_destroy();}

visible = global.powerSupply;
