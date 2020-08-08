xx = x + sprite_width / 2;
yy = y + sprite_height / 2;
tool[0] = oScrewDriver;
tool[1] = oPartner;
tool[2] = oDeadPartner;
acomodateTools = true;

//CREATE TOOLS
for(i = 0; i < array_length_1d(tool); i++){

	instance_create_depth(x, 9999, depth - 1, tool[i]);

}