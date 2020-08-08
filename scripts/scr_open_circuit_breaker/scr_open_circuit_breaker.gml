//IF WE'RE INTERACTING FOR THE SECOND TIME, CUT ALL THE POWER OFF
if oPowerSupply.row == 2 {global.powerSupply = false;}
if oPowerSupply.row == 3 {global.powerSupply = true;}

oPowerSupply.image_index = 1;
if oPowerSupply.row < 3 {oPowerSupply.row++;} else {oPowerSupply.row = 2;}

