depth = -y;

if(self.life<= 0)instance_destroy(self,true);

// Following Player
 #region
 if(instance_exists(obj)){
 if(can_follow_player){
if(distance_to_object(obj) >= 5){
if(obj.x < x) x = lerp(x, obj.x, 0.005);
else if(obj.x > x)  x = lerp(x, obj.x, 0.005);

if(obj.y < y) y = lerp(y, obj.y , 0.005);
else if(obj.y > y) y = lerp(y, obj.y , 0.005);
}
 }
 
 //Defending soldiers
 else{
	 
 }
	 }
#endregion

//Punch System
#region
 if(instance_exists(obj)){
if(distance_to_object(obj) <= 150 && !saw_player)
saw_player = true;
if(saw_player) {
if(!try_to_punch){

try_to_punch = true;

}
else {
	var this_color = image_blend
punch_count++;
image_blend = c_green;
if(punch_count >= 100){
	punch_count = 0;
	punched = true;
	image_blend = c_white;
}
}
	
if (punched){
	if( distance_to_object(obj) <= 120){
	obj.life -= 30;
	
	if(obj.x < x) obj.x -= 40;
	else if(obj.x > x) obj.x += 40;

	if(obj.y < y) obj.y -= 40;
	else if(obj.y > y) obj.y += 40;
	}
punched = false;
saw_player = false;
}
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