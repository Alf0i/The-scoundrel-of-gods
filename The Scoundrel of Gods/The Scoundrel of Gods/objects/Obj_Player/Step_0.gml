show_debug_message(life);


//MOVIMENT
#region
right = 0;
left = 0;
up = 0;
down = 0;

if(keyboard_check(ord("W"))) up = 1;
if(keyboard_check(ord("S"))) down = 1;
if(keyboard_check(ord("A"))) left = 1;
if(keyboard_check(ord("D"))) right = 1;
#endregion

hor = right - left;
vert = down - up;

var _dir = point_direction(x,y,x + hor,y + vert);


if(hor != 0 || vert != 0) spd = 5;
else spd = 0;

hor = lengthdir_x(spd,_dir);
vert = lengthdir_y(spd,_dir);

x += hor;
y += vert;

