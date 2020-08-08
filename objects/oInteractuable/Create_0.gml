//I WILL CREATE A DETECTOR BASED ON MY SPRITE SIZE
xx = x;
yy = y;
detector = instance_create_depth(x, y, depth - 1, oPlayerDetector)
detector.image_xscale = sprite_width/8;
detector.image_yscale = sprite_height/8 * 1.25;
detector.depth = depth - 1;
detector.creatorID = id;
detector.x = xx;
detector.y = yy;

canInteract = true;
text = "";
row = 0;
executeAfterTalking = scr_frozen_state;
yesScript = scr_frozen_state;





