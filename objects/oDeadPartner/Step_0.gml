event_inherited();

if instance_exists(detector){
	
	xx = x - detector.sprite_width/1.5
	yy = y - detector.sprite_height/2;
	detector.image_xscale = oPartner.sprite_height/8 * 2;
	detector.image_yscale = oPartner.sprite_width/8 * 2;
}

depth = -y;
