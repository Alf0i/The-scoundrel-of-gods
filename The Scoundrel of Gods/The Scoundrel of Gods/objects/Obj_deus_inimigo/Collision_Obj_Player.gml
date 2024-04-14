
//Punch System

if(distance_to_object(obj) <= 20) {
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