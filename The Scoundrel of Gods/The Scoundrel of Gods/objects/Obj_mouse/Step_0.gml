if(keyboard_check(vk_escape)) game_end();

if(instance_exists(Obj_suditos_aliados)){
var referece = instance_nearest(mouse_x,mouse_y, Obj_suditos_aliados);
show_debug_message(" x: {0} y: {0}",mouse_y);

//CHOOSING ALLY
#region

if(referece != aux_selec || selec_aliado == 0){
if(point_distance(mouse_x,mouse_y, referece.x,referece.y) <= 32){
	if(mouse_check_button(mb_right)){
	Obj_suditos_aliados.image_blend = c_white;
	aux_selec = selec_aliado;
selec_aliado = referece;
selec_aliado.image_blend = c_green;
	}
}
}

if(point_distance(mouse_x,mouse_y, referece.x,referece.y) > 32){
	if(mouse_check_button(mb_right)){
selec_aliado = 0;
Obj_suditos_aliados.image_blend = c_white;
	}
}


#endregion

//MOVING ALLY
#region
if(selec_aliado != 0){
	
	if(mouse_check_button_released(mb_left)){
		mx = mouse_x;
		my = mouse_y;
		
	}		
}
#endregion
}