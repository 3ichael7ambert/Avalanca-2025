randomize();
AvaSpeed=0;

//SUN
sunPosition_x = irandom(room_width);
sunPosition_y = irandom(room_height);

//------------------------//
// DEBUG //
/*
globalvar level, vehicle;
level=0
vehicle=0;
*/
//------------------------//

repeat (random(10)){ instance_create(random(room_width),(random(room_height)/2)+10,obj_tree_av);}
//repeat (random(10)){ instance_create(random(room_width),(random(room_height)/2)+10,obj_cloud);}
alarm[1]=random(1000);
alarm[2]=random(5);
alarm[3]=random(5000);
instance_create(0,-500,obj_avalanche_av);
score_=0;

restart_menu=false;
res_menu_select=0;

//restart
res_time=0;
res_timed=10;

/*
if level=0 {
	var lay_id = layer_get_id("Foreground");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != bg_Mist
	{
		layer_background_sprite(back_id, bg_Mist);
	}
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != snowBG
	{
		layer_background_alpha(back_id,1);
		layer_background_sprite(back_id, snowBG);
	}
	
}

if level=1 {
	var lay_id = layer_get_id("Foreground");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != bg_Mist
	{
		layer_background_sprite(back_id, bg_Mist);
	}
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprSand
	{
		layer_background_alpha(back_id,1);
		layer_background_sprite(back_id, sprSand);
	}
	
}

if level=2 {
	var lay_id = layer_get_id("Foreground");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != bg_Mist
	{
		layer_background_sprite(back_id, bg_Mist);
	}
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprGrassJungle
	{
		layer_background_alpha(back_id,1);
		layer_background_sprite(back_id, sprGrassJungle);
	}
	
}

if level=3 {
	var lay_id = layer_get_id("Foreground");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != bg_Mist
	{
		layer_background_sprite(back_id, bg_Mist);
	}
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprGrassForest
	{
		layer_background_alpha(back_id,1);
		layer_background_sprite(back_id, sprGrassForest);
	}
	
}

if level=4 {
	var lay_id = layer_get_id("Foreground");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != bg_Mist
	{
		layer_background_sprite(back_id, bg_Mist);
	}
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprOcean
	{
		layer_background_alpha(back_id,.5);
		layer_background_sprite(back_id, sprOcean);
	}
	var lay_id2 = layer_get_id("Background2");
	var back_id2 = layer_background_get_id(lay_id2);
	if layer_background_get_sprite(back_id2) != sprOcean
	{
		
		layer_background_alpha(back_id2,.5);
		layer_background_sprite(back_id2, sprOcean);
	}
	var lay_id3 = layer_get_id("Background3");
	var back_id3 = layer_background_get_id(lay_id3);
	if layer_background_get_sprite(back_id3) != sprSand
	{
		layer_background_alpha(back_id3,1);
		layer_background_sprite(back_id3, sprSand);
	}
	
}

if level=5 {
	var lay_id = layer_get_id("Foreground");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != bg_Mist
	{
		layer_background_sprite(back_id, bg_Mist);
	}
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprConcreate
	{
		layer_background_alpha(back_id,1);
		layer_background_sprite(back_id, sprConcreate);
	}
	
}

if level=6 {
	var lay_id = layer_get_id("Foreground");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != bg_Mist
	{
		layer_background_sprite(back_id, bg_Mist);
	}
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprStars_BG3
	{
		layer_background_sprite(back_id, sprStars_BG3);
		layer_background_alpha(back_id,1);
	}
	var lay_id2 = layer_get_id("Background2");
	var back_id2 = layer_background_get_id(lay_id2);
	if layer_background_get_sprite(back_id2) != sprStars_BG2
	{
		layer_background_sprite(back_id2, sprStars_BG2);
		layer_background_alpha(back_id2,1);
	}
	var lay_id3 = layer_get_id("Background3");
	var back_id3 = layer_background_get_id(lay_id3);
	if layer_background_get_sprite(back_id3) != sprStars_BG
	{
		layer_background_sprite(back_id3, sprStars_BG);
		layer_background_alpha(back_id3,1);
	}
	
}
*/