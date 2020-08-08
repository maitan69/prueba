//DRAW TEXT BOX
draw_set_alpha(1);
var boxWidth = 200
var boxHeight = 50
draw_set_color(c_orange)
var boxX = 320/2 - boxWidth/2;
var boxY = 180/1.5
draw_rectangle(boxX, boxY, 320/2 + boxWidth/2, 180/1.5 + boxHeight, false)

//DRAW WHO'S TALKING (DO IT JUST ONCE, AS SOON AS PAGE CHANGES, AND ALSO ON CREATE)
prePage = curPage;
curPage = pag;

if prePage != curPage 
or created
{
    //PARTNER AVATAR
	if string_char_at(text[row, pag], 1) != "*" 
	and string_char_at(text[row, pag], 1) != "?" 
	{
	
		speaking = oPlayer.sprite_index;
	
	} else {
		
		if string_char_at(text[row, pag], 1) == "*" {
		speaking = oPartner.sprite_index;
		} else {
		speaking = oGuard.sprite_index;
		}
	
		
		//REMOVE THE SIGN
		text[row, pag] = string_delete(text[row, pag], 1, 1);
	}
	
	
	
	//DETECT WHEN A DIALOG SHOULD SPAWN A "YES/NO" OTION
	if string_char_at(text[row, pag], 1) == "-" {
		
		//FLAG
		yesNoFlag = true;
		
		//REMOVE THE SIGN
		text[row, pag] = string_delete(text[row, pag], 1, 1);
	
	}
	
	created = false;

}



draw_sprite(speaking, 0, boxX + sprite_get_width(speaking), boxY + sprite_get_height(speaking)* 1.2); 

//DRAW TEXT
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_black)
draw_set_alpha(1)
draw_set_font(fnt_0)
var marginY = 3;
var marginX = oPlayer.sprite_width * 2;
draw_text_ext(boxX + marginX, boxY + marginY, text[row, pag], string_height(text[row, pag])/1.5, boxWidth - marginX)

//DRAW YESNO
if yesNoFlag {
	
	for (i = 0; i < 2; i++){
	draw_text(boxX + marginX + (i * 60), boxY + marginY + 25, option[i])
	}	
	
	draw_set_color(c_white);
	draw_text(boxX + marginX + (ind * 60), boxY + marginY + 25, option[ind])
	
}
