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
xadd = sin(_dir)*spd;
yadd = sin(_dir)*spd;

x += xadd;
y += yadd;

