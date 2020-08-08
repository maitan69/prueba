draw_set_alpha(1);
draw_self();

//SLEEPING STATE
if sleep {

	image_angle = 90
	draw_sprite_ext(sprite191, 0, x - sprite_height/2, y - sprite_width, 2, 1, 0, c_white, 1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_1)
	draw_set_alpha(1)
	draw_set_color(c_black)
    draw_text(x - sprite_height/2, y - sprite_width * 2, "z Z Z...")	
	
	if id == oPlayer.id 
	and !oMenuChanger.enabled
	{
		
		if keyboard_check_pressed(vk_right)
		or keyboard_check_pressed(vk_left)
		or keyboard_check_pressed(vk_up)
		or keyboard_check_pressed(vk_down){
		
		sleep = false;
		state = scr_move_state;
		
		}
	
	}

} else {

	//image_angle = 0;

}
