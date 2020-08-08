draw_self();
x = 0;
y = 0;

//DRAW THE GOAL
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_alpha(1)
draw_set_font(fnt_0)

//DRAW TITLE
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text(320/2, 30, "GOAL:")

//DRAW "USE"
draw_set_color(c_black)
draw_set_halign(fa_left)
var totalTextWidth = string_width("Use") + string_width(option[global.ind]) + string_width("to escape.")
draw_text(320/2 - totalTextWidth/2, 180/2.2, "Use")

//DRAW THE TOOL
draw_set_color(c_blue)
draw_text(320/2 - totalTextWidth/2 + string_width("Use") + 5, 180/2.2, option[global.ind])

//DRAW "TO ESCAPE"
draw_set_color(c_black)
draw_text(320/2 - totalTextWidth/2 + string_width("Use") + 10 + string_width(option[global.ind]), 180/2.2, "to escape.")


//DRAW CONTROLS
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text(320/2, 150, "Press Z to exit.")

//DRAW ARROWS
draw_set_font(fnt_1)
sinValue += (pi * 2) / room_speed; 
if sinValue >= pi * 2 {sinValue = 0;}
draw_sprite(sprite10 , 0, 320/2 - totalTextWidth/2 + string_width("Use") + string_width(option[global.ind])/2, 180/2.2 - 10 - sin(sinValue))
draw_sprite_ext(sprite10, 0, 320/2 - totalTextWidth/2 + string_width("Use") + string_width(option[global.ind])/2, 180/2.2 + 10 + sin(sinValue), 1, -1, 0, c_white, 1)


//DEBUG
/*
for(i = 0; i < 3; i++){

    draw_text(30, 30 + (i*10), "timeline " + string(i));
	draw_text(100, 30 + (i*10), global.timeLine[i, 0]);

}