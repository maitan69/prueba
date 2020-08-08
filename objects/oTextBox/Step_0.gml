//YESNO
if yesNoFlag 
//and pag == array_length_2d(text, row) - 1
{
	var k = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
	if k != 0 {ind += k};
	if ind > 1 {ind = 0};
	if ind < 0 {ind = 1};
}



