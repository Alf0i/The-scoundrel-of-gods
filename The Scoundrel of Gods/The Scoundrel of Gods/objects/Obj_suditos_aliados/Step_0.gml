
depth = -y;

if(self.life<= 0)instance_destroy(self,true);

if(instance_exists(Obj_suditos_inimigos)){
obj = instance_nearest(x,y, Obj_suditos_inimigos)
}else obj = instance_nearest(x,y, Obj_deus_inimigo)
//BATTLE SYSTEM
#region
if(!in_battle){
if(distance_to_object(obj) <= 150 && distance_to_object(obj) >= 10){
	
	if(obj.x < x) x -= spd;
	else if(obj.x > x) x += spd;

	if(obj.y < y) y -= spd;
	else if(obj.y > y) y += spd;
	
}
else if(distance_to_object(obj) <= 20){
	in_battle = true;
}

}
else {
	if(distance_to_object(obj) <= 10){
		if(punch_count <= 50) punch_count++;
		else{
			punch_count = 0;
			obj.life -= 10;
		}
	}
	else if(distance_to_object(obj) > 150){
	in_battle = false;
	}

}
#endregion
	
//MOVIMENT SYSTEM OF ALLIES
#region
if(instance_exists(Obj_mouse)){
if(Obj_mouse.selec_aliado.id == self.id && !is_definided_local
&& Obj_mouse.mx != 0 && Obj_mouse.my != 0){
	mx = Obj_mouse.mx;
	my = Obj_mouse.my;
	is_definided_local = true;
	
}
if(is_definided_local){
	Obj_mouse.mx = 0;
	Obj_mouse.my = 0;
	can_go = true;
	Obj_mouse.selec_aliado = 0;
}
	if(can_go){
	is_definided_local = false;
	
	if(mx >= (51+32) && mx <= (1227-32) && my >= (43+32) && my <= (917 - 32)){
		if(distance_to_object(obj) > 150){
		x = lerp(x, mx, 0.02);
		y = lerp(y, my, 0.02);
		}
	}

if(x == mx && y == my) {
		
		can_go = false;
		image_blend = c_white;
	}
	
}
}
#endregion
