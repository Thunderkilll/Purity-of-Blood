//get box stats
enemy = argument0;
var Sx = x;
var Sy = y;
var Ex = enemy.x;
var Ey = enemy.y;
var dirNum = sign(Sx-Ex);
var vDirNum = sign(Sy-Ey);
if dirNum == 0 dirNum = 1;
if vDirNum == 0 vDirNum = 1;

angle = radtodeg(arctan(abs((Sy-Ey)/(Sx-Ex))));

//base blood info
if argument1 = "blood"
{
	var angleVar = random_range(-10,10)
	for (var i = 0; i < random_range(argument3-irandom(2),argument3+irandom(2));i++)
	{
		randomize()
		if argument2 = "dark red" var colour = make_color_rgb(random_range(106,156),32,32);
		var part = instance_create_depth(Sx+random_range(-32,32),Sy+random_range(-32,32),depth+1,obj_blood)
		part.image_blend = colour;
		var theta = angle+angleVar+random_range(-25,25)
		var spd = random_range(argument4/8,argument4);
		part.hspeed = dirNum*spd*dcos(theta);
		part.vspeed = vDirNum*spd*dsin(theta);
		part.image_angle = 0;
		var scale = 2;
		part.image_xscale = scale;
		part.image_yscale = scale;
		part.colour = colour;
		part.hoverDuration = 0.4;
	}
}