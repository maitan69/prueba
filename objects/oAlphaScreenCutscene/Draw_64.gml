draw_set_alpha(a)
draw_set_color(c_black)
draw_rectangle(0, 0, 320, 180, false);

//IF ALARM IS SET, DRAW "A FEW HOURS LATER"
if alarm[0] > 0 {
	
	//DRAW THE GOAL
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_set_font(fnt_0)
	draw_text(320/2, 180/2, "A few hours later...")

}
