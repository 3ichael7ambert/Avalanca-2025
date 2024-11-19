/// @description Insert description here
// You can write your code in this editor




if level=0 c_color=c_white; //SNOW
if level=1 c_color=make_color_rgb(255,234,166); //DESERT
if level=2 c_color=make_color_rgb(0,155,10); //FOREST
if level=3 c_color=make_color_rgb(103,130,23); //JUNGLE
if level=4 c_color=c_grey; //City
if level=5 c_color=c_dkgray; //SPACE


if level=0 
{
	if instance_exists(objPlayer)
		{
		while (instance_number(obj_tree)<round_lvl)
		repeat (irandom_range(1,round_lvl)) 
		{
		with (instance_create(0, 0, obj_tree))
			{
				
				x = objPlayer.x+ irandom_range(-10000,10000);		xx = objPlayer.x + choose(random(2000),-random(1000));
				y = objPlayer.y + 3000;
			}
		}
		round_lvl+=.1;
		}
	score+=1;
	
}


if level=1 
{
	if instance_exists(objPlayer)
		{
		while (instance_number(obj_tree)<round_lvl)
		repeat (irandom_range(1,round_lvl)) 
		{
		with (instance_create(0, 0, obj_tree))
			{
				
				x = objPlayer.x+ irandom_range(-10000,10000);		xx = objPlayer.x + choose(random(2000),-random(1000));
				y = objPlayer.y + 1000;
			}
		}
		round_lvl+=.1;
		}
	score+=1;
	
}


if level=2 
{
	if instance_exists(objPlayer)
		{
		while (instance_number(obj_tree)<round_lvl)
		repeat (irandom_range(1,round_lvl)) 
		{
		with (instance_create(0, 0, obj_tree))
			{
				
				x = objPlayer.x+ irandom_range(-10000,10000);		xx = objPlayer.x + choose(random(2000),-random(1000));
				y = objPlayer.y + 1000;
			}
		}
		round_lvl+=.1;
		}
	score+=1;
	
}



if level=3 
{
	if instance_exists(objPlayer)
		{
		while (instance_number(obj_tree)<round_lvl)
		repeat (irandom_range(1,round_lvl)) 
		{
		with (instance_create(0, 0, obj_tree))
			{
				
				x = objPlayer.x+ irandom_range(-10000,10000);		xx = objPlayer.x + choose(random(2000),-random(1000));
				y = objPlayer.y + 1000;
			}
		}
		round_lvl+=.1;
		}
	score+=1;
	
}


if level=4 
{
	
	if instance_number(o_fish) <10 {
		instance_create_layer(random(room_width), random(room_height), "fishLayer1", o_fish);
		instance_create_layer(random(room_width), random(room_height), "fishLayer2", o_fish);
		//instance_create(random(room_width),random(room_height),o_fish);
	}
	
	if instance_exists(objPlayer)
		{
		while (instance_number(obj_tree)<round_lvl)
		repeat (irandom_range(1,round_lvl)) 
		{
		with (instance_create(0, 0, obj_tree))
			{
				
				x = objPlayer.x+ irandom_range(-10000,10000);		xx = objPlayer.x + choose(random(2000),-random(1000));
				y = objPlayer.y + 1000;
			}
		}
		round_lvl+=.1;
		}
	score+=1;
	
}




if level=5 
{
	if instance_exists(objPlayer)
		{
		while (instance_number(obj_tree)<round_lvl)
		repeat (irandom_range(1,round_lvl)) 
		{
		with (instance_create(0, 0, obj_tree))
			{
				
				x = objPlayer.x+ irandom_range(-10000,10000);		xx = objPlayer.x + choose(random(2000),-random(1000));
				y = objPlayer.y + 1000;
			}
		}
		round_lvl+=.1;
		}
	score+=1;
	
}


if level=6 
{
	if instance_exists(objPlayer)
		{
		while (instance_number(obj_tree)<round_lvl)
		repeat (irandom_range(1,round_lvl)) 
		{
		with (instance_create(0, 0, obj_tree))
			{
				
				x = objPlayer.x+ irandom_range(-10000,10000);		xx = objPlayer.x + choose(random(2000),-random(1000));
				y = objPlayer.y + 1000;
			}
		}
		round_lvl+=.1;
		}
	score+=1;
	
}

