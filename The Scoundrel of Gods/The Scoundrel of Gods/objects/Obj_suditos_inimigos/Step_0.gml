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