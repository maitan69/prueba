draw_set_alpha(1)
draw_set_color(c_ltgray)
draw_rectangle(0, 0, 320, 180, false);

//DRAW INSERT PASSWORD TEXT AND BOX
draw_set_color(color)
draw_set_halign(fa_center)
draw_text(320/2, 180/3, message);

var boxWidth = 100
var boxHeight = 25
draw_set_color(c_white)
draw_rectangle(320/2 - boxWidth/2, 180/2, 320/2 + boxWidth/2, 180/2 + boxHeight, false);

draw_set_alpha(real(blink))
draw_set_color(c_black)
var lineX = 320/2 - boxWidth/2 + 4 + string_width(password);
draw_line_width(lineX, 180/2, lineX, 180/2 + boxHeight - 1, 1)

draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text(320/2 - boxWidth/2 + 5, 180/2 + boxHeight/2, password)

draw_set_halign(fa_center)
draw_text(320/2, 180 - 30, "Enter to accept");
draw_text(320/2, 180 - 15, "Esc to exit");