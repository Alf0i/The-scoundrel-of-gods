

// Following Player
#region
if(distance_to_object(obj) >= 5){
if(obj.x < x) x -= spd;
else if(obj.x > x) x += spd;

if(obj.y < y) y -= spd;
else if(obj.y > y) y += spd;
}
#endregion

//Punch System
#region
if(distance_to_object(obj) <= 10) {
if(!try_to_punch){

punch_count++;

if(punch_count >= 50){
punch_count = 0;
try_to_punch = true;
}
}
else {
punch_count++;
if(punch_count >= 100){
	punch_count = 0;
	punched = true;
}
}
	
if (punched){
	
	obj.life -= 30;
	
	if(obj.x < x) obj.x -= 40;
	else if(obj.x > x) obj.x += 40;

	if(obj.y < y) obj.y -= 40;
	else if(obj.y > y) obj.y += 40;

punched = false;
}
}
	
#endregion


// Player's first hability
#region
if(instance_exists(Obj_hab1)){
if(Obj_hab1.x < x) x -= atracao;
else if(Obj_hab1.x > x) x += atracao;

if(Obj_hab1.y < y) y -= atracao;
else if(Obj_hab1.y > y) y += atracao;

if(distance_to_object(Obj_hab1) <= 150 && distance_to_object(Obj_hab1) >= 10)
	atracao = 15;

else
	atracao = 0;
}

#endregion