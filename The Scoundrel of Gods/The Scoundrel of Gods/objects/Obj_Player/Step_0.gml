show_debug_message("x: {0} // y: {0}" , mouse_x, mouse_y);


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

hor = right - left;
vert = down - up;


//NORMALIZING AND COLLISION
if(hor != 0 || vert != 0){

var _dir = point_direction(0,0,hor,vert);
xadd = lengthdir_x(spd,_dir);
yadd = lengthdir_y(spd,_dir);
#endregion

//HORIZONTAL COLLISION
#region
if(place_meeting(x + xadd, y,Obj_colisao)){

	while(!place_meeting(x + sign(xadd), y,Obj_colisao)){
	x=x + sign(xadd);
	}
	xadd =0;
}
#endregion

//VERTICAL COLLISION
#region
if(place_meeting(x, y + yadd,Obj_colisao)){

	while(!place_meeting(x, y + sign(yadd),Obj_colisao)){
	y=y + sign(yadd);
	}
	yadd = 0;
}
#endregion

x += xadd;
y += yadd;
}


//HABILITY 1
#region

if(can_use_hab1){
if(keyboard_check(ord("Q"))){
	
if(mouse_check_button(mb_left)){
var _inst = instance_create_layer(mouse_x, mouse_y, "Habilities", Obj_hab1);
_inst.image_xscale = 3;
_inst.image_yscale = 3;
has_hab1_finished = false;
can_use_hab1 = false;
can_count_hab1 = true;

}
} 
}
else{
	if(can_count_hab1) hab1_count++;
	if(hab1_count >= 200 && !has_hab1_finished) {
		instance_destroy(Obj_hab1.id,Obj_hab1);
		has_hab1_finished = true;
		}
	else if(hab1_count >= 500){
		can_count_hab1 = false;
		hab1_count = 0;
		can_use_hab1 = true;
	}

}

#endregion