depth = -y;

xaxis = keyboard_check(vk_right) - keyboard_check(vk_left);
yaxis = keyboard_check(vk_down) - keyboard_check(vk_up);

//GET DIRECTION
dir = point_direction(0, 0, xaxis, yaxis)

//GET LENGTH
if xaxis == 0 and yaxis == 0 {var length = 0} else {var length = spd;}

//GET HSPEED AND VSPEED
hSpeed = lengthdir_x(length, dir);
vSpeed = lengthdir_y(length, dir); 

//COLLISION X
if place_meeting(x + hSpeed, y, o_solid){
while !place_meeting(x + sign(hSpeed), y, o_solid){x += sign(hSpeed);} 
hSpeed = 0; 
}

//COLLISION Y
if place_meeting(x, y + vSpeed, o_solid){
while !place_meeting(x, y + sign(vSpeed), o_solid){y += sign(vSpeed);} 
vSpeed = 0; 
}

//MOVEMENT
x += hSpeed;
y += vSpeed;