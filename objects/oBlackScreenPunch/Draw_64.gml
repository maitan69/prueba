draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(0, 0, 320, 180, false);

//DRAW THE GOAL
if alarm[4] < 0 {

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(fnt_0)
draw_text(320/2, 180/2, "You found the Guard's key inside his pocket!")

draw_text(320/2, 180/1.2, "Press Z to continue.")

if keyboard_check_pressed(ord("Z")){instance_destroy();}

}

