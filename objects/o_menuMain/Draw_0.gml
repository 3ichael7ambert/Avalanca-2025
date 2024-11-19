/// @description Insert description here

//draw

draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_color,.5);


var _new_w = 0;
for (var i=0; i<op_length; i++;)
{
	var _op_w = string_width(option[i]);
	_new_w = max(_new_w, _op_w);
	
}

width=_new_w + op_border*2;
height = op_border*2 + sprite_get_height(spr_main_font) + (op_length-1)*op_space;


//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/3*2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - width/2;

//draw the options
//draw_set_font
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i=0; i<op_length; i++;)
{
	var _c = c_white;
	if pos == i { _c =c_yellow;}
	//draw_text_color(x+op_border,y+op_border+op_space*i, option[i],_c,_c,_c,_c,1);
	draw_text_outlined(x+op_border,y+op_border+op_space*i, option[i],_c,c_black);
	

}

//DRAW SHIP
/*
if ship=0 {draw_sprite_ext(sprShip,0,room_width/2,room_height/4,.5,.5,270,c_white,1);}
if ship=1 {draw_sprite_ext(sprUFO2,3,room_width/2,room_height/4,.5,.5,0,c_white,1);}
if ship=2 {draw_sprite_ext(sprScrew,screw,room_width/2-50,room_height/4,.5,.5,0,c_white,1);}
if ship=2 {draw_sprite_ext(sprRocketMetal,0,room_width/2,room_height/4,.5,.5,0,c_white,1);}
if ship=3 {draw_sprite_ext(sprCan,0,room_width/2,room_height/4,.5,.5,0,c_white,1);}
	*/
	
	/*
draw_text_outlined(room_width*.6,room_height/3,vehicleName,c_white,c_black);
draw_text_outlined(room_width*.6,room_height/5,gameModeName,c_white,c_black);
*/

//DRAWN LEVEL
//SNOW
if level=0 {
	//draw_text_outlined(room_width/2,room_height/4,"Blizzard",c_white,c_black);
	//create_parallax_layer(snowBG, 0, 0, 0, 0, 1000, c_white, 1);
	//layer_background_change(backgroundLayer,snowBG);
	
	
	
	
	var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != snowBG
{
	
	layer_background_alpha(back_id,1);
    layer_background_sprite(back_id, snowBG);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_hspeed(lay_id, 0);
    layer_vspeed(lay_id, -roomSpeed);
}



	}
//Desert
if level=1 {
	//draw_text_outlined(room_width/2,room_height/4,"Desert",c_white,c_black);
	//create_parallax_layer(sprBeach, 0, 0, 0, 0, 1000, c_white, 1);
	
	var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprSand
{
	
	layer_background_alpha(back_id,1);
    layer_background_sprite(back_id, sprSand);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_hspeed(lay_id, 0);
    layer_vspeed(lay_id, -roomSpeed);
}




	}
	
//Jungle
if level=3 {
	//draw_text_outlined(room_width/2,room_height/4,"Jungle",c_white,c_black);
	//create_parallax_layer(snowBG, 0, 0, 0, 0, 1000, c_white, 1);
	var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprGrassJungle
{
	
	layer_background_alpha(back_id,1);
    layer_background_sprite(back_id, sprGrassJungle);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_hspeed(lay_id, 0);
    layer_vspeed(lay_id, -roomSpeed);
}
	}
	
//Forest
if level=2 {
	//draw_text_outlined(room_width/2,room_height/4,"Forest",c_white,c_black);
	//create_parallax_layer(snowBG, 0, 0, 0, 0, 1000, c_white, 1);
		var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprGrassForest
{
	
	layer_background_alpha(back_id,1);
    layer_background_sprite(back_id, sprGrassForest);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_hspeed(lay_id, 0);
    layer_vspeed(lay_id, -roomSpeed);
}

	}
	
	
//Water
if level=4 {
	//draw_text_outlined(room_width/2,room_height/4,"Water",c_white,c_black);

	
	var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprWater
{
	
	layer_background_alpha(back_id,.5);
    layer_background_sprite(back_id, sprWater);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_hspeed(lay_id, 0);
    layer_vspeed(lay_id, -roomSpeed);
	layer_background_speed(back_id, 0.2);
}

	var lay_id2 = layer_get_id("backgroundLayer2");
	var back_id2 = layer_background_get_id(lay_id2);
	if layer_background_get_sprite(back_id2) != sprWater2
{
	layer_background_alpha(back_id2,.5);
    layer_background_sprite(back_id2, sprWater2);
	layer_background_htiled(back_id2,true);
	layer_background_vtiled(back_id2,true);
    layer_hspeed(lay_id2, 0);
    layer_vspeed(lay_id2, -roomSpeed);
	layer_background_speed(back_id2, 0.1);
}

	var lay_id3 = layer_get_id("backgroundLayer3");
	var back_id3 = layer_background_get_id(lay_id3);
	if layer_background_get_sprite(back_id3) != sprSand
{
	
	layer_background_alpha(back_id3,1);
    layer_background_sprite(back_id3, sprSand);
	layer_background_htiled(back_id3,true);
	layer_background_vtiled(back_id3,true);
    layer_hspeed(lay_id3, 0);
    layer_vspeed(lay_id3, -roomSpeed);
	layer_background_speed(back_id3, 0.2);
}
	}
	
	
	
	//City
if level=5 {
	//draw_text_outlined(room_width/2,room_height/4,"City",c_white,c_black);
	//create_parallax_layer(snowBG, 0, 0, 0, 0, 1000, c_white, 1);
		var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprConcreate
{
	
	layer_background_alpha(back_id,1);
    layer_background_sprite(back_id, sprConcreate);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_hspeed(lay_id, 0);
    layer_vspeed(lay_id, -roomSpeed);
}
	}
	
	
	
//Space
if level=6 {
	//draw_text_outlined(room_width/2,room_height/4,"Outerspace",c_white,c_black);
	
//create_parallax_layer(sprStars_BG, 0.2, 0.2, 0.2, 0, 1000, c_white, 1);
//create_parallax_layer(sprStars_BG, 0.4, 0.4, 0.1, 0, 1010, c_white, 1);
//create_parallax_layer(sprStars_BG, 0.6, 0.6, 0.05, 0, 1020, c_white, 1);
	var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != sprStars_BG
{
	
	layer_background_alpha(back_id,1);
    layer_background_sprite(back_id, sprStars_BG);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_hspeed(lay_id, 0);
    layer_vspeed(lay_id, -roomSpeed*.1);
	layer_background_speed(back_id, 0);
}

	var lay_id2 = layer_get_id("backgroundLayer2");
	var back_id2 = layer_background_get_id(lay_id2);
	if layer_background_get_sprite(back_id2) != sprStars_BG2
{
	
	layer_background_alpha(back_id2,1);
    layer_background_sprite(back_id2, sprStars_BG2);
	layer_background_htiled(back_id2,true);
	layer_background_vtiled(back_id2,true);
    layer_hspeed(lay_id2, 0);
    layer_vspeed(lay_id2, -roomSpeed*.3);
	layer_background_speed(back_id2, 0);
}

	var lay_id3 = layer_get_id("backgroundLayer3");
	var back_id3 = layer_background_get_id(lay_id3);
	if layer_background_get_sprite(back_id3) != sprStars_BG3
{
	
	layer_background_alpha(back_id3,1);
    layer_background_sprite(back_id3, sprStars_BG3);
	layer_background_htiled(back_id3,true);
	layer_background_vtiled(back_id3,true);
    layer_hspeed(lay_id3, 0);
    layer_vspeed(lay_id3, -roomSpeed*.6);
	layer_background_speed(back_id3, 0);
}
	}
	
	
	

	
/*
if level=7 {draw_text_outlined(room_width/2,room_height/4,"FOREST",c_white,c_black);}
if level=8 {draw_text_outlined(room_width/2,room_height/4,"OCEANA",c_white,c_black);}
if level=9 {draw_text_outlined(room_width/2,room_height/4,"DESERT",c_white,c_black);}
if level=10 {draw_text_outlined(room_width/2,room_height/4,"SKYLINE",c_white,c_black);}
if level=11 {draw_text_outlined(room_width/2,room_height/4,"FOREST SIDE",c_white,c_black);}
if level=12 {draw_text_outlined(room_width/2,room_height/4,"JUNGLE SIDE",c_white,c_black);}
if level=13 {draw_text_outlined(room_width/2,room_height/4,"RAINBOW FOREST",c_white,c_black);}
*/

	
	//scr_draw_border_text(x, y, text, color, border, thickness, alpha)



/*


//
// BG
//
if menuScreen=0 
{
	
draw_sprite(sprMtnMenu,0,x+mouse_posx,y+mouse_posy);
draw_sprite(sprMtnMenu,1,x+mouse_posx*1.2,y+mouse_posy*1.2);
draw_sprite(sprMtnMenu,2,x+mouse_posx*1.3,y+mouse_posy*1.3);
draw_sprite(sprMtnMenu,3,x+mouse_posx*1.4,y+mouse_posy*1.4);
draw_sprite(sprMtnMenu,4,x+mouse_posx*1.5,y+mouse_posy*1.5);
draw_sprite(sprMtnMenu,5,x+mouse_posx*1.6,y+mouse_posy*1.6);
draw_sprite(sprMtnMenu,6,x+mouse_posx*1.7,y+mouse_posy*1.7);
draw_sprite(sprMtnMenu,7,x+mouse_posx*1.8,y+mouse_posy*1.8);
draw_sprite(sprMtnMenu,8,x+mouse_posx*1.9,y+mouse_posy*1.9);
draw_sprite(sprMtnMenu,9,x+mouse_posx*2,y+mouse_posy*2);
}

if menuScreen=1 || !menuScreen=1
{
		if(level == 0) //Tundra
	{
		//draw_sprite(sprLevelTitle_Tundra,0,x+mouse_posx,y+mouse_posy);
	draw_sprite(sprLevelTitle_Tundra,8,x+mouse_posx*2,y+mouse_posy*2);
	draw_sprite(sprLevelTitle_Tundra,7,x+mouse_posx*1.9,y+mouse_posy*1.9);
	draw_sprite(sprLevelTitle_Tundra,6,x+mouse_posx*1.8,y+mouse_posy*1.8);
	draw_sprite(sprLevelTitle_Tundra,5,x+mouse_posx*1.7,y+mouse_posy*1.7);
	draw_sprite(sprLevelTitle_Tundra,4,x+mouse_posx*1.6,y+mouse_posy*1.6);
	draw_sprite(sprLevelTitle_Tundra,3,x+mouse_posx*1.5,y+mouse_posy*1.5);
	draw_sprite(sprLevelTitle_Tundra,2,x+mouse_posx*1.4,y+mouse_posy*1.4);
	draw_sprite(sprLevelTitle_Tundra,1,x+mouse_posx*1.3,y+mouse_posy*1.3);
	draw_sprite(sprLevelTitle_Tundra,0,x+mouse_posx*1.2,y+mouse_posy*1.2);
	
	draw_sprite(sprLevelTitles,0,room_width/2,room_height/2);
	}
	
			if(level == 1) //Forest
	{
		//draw_sprite(sprLevelTitle_Forest,0,x+mouse_posx,y+mouse_posy);
	//draw_sprite(sprLevelTitle_Forest,3,x+mouse_posx*1.8,y+mouse_posy*1.8);
	draw_sprite(sprLevelTitle_Forest,3,x+mouse_posx*1.8,room_height/2);

	draw_sprite(sprLevelTitle_Forest,2,x+mouse_posx*1.6,y+mouse_posy*1.6);

	//draw_sprite(sprLevelTitle_Forest,1,x+mouse_posx*1.4,y+mouse_posy*1.4);
	draw_sprite(sprLevelTitle_Forest,1,x+mouse_posx*1.4,room_height/2);

	//draw_sprite(sprLevelTitle_Forest,0,x+mouse_posx*1.2,y+mouse_posy*1.2);
	draw_sprite(sprLevelTitle_Forest,0,room_width/2,room_height/2);
	
	draw_sprite(sprLevelTitles,1,room_width/2,room_height/2);

	}
	
			if(level == 2) //Desert
	{
		draw_sprite(sprLevelTitle_Desert,0,x+mouse_posx,y+mouse_posy);
	draw_sprite(sprLevelTitle_Desert,4,x+mouse_posx*2,y+mouse_posy*2);
	
	draw_sprite(sprLevelTitle_Desert,3,x+mouse_posx*1.8,y+mouse_posy*1.8);

	draw_sprite(sprLevelTitle_Desert,2,x+mouse_posx*1.6,y+mouse_posy*1.6);

	draw_sprite(sprLevelTitle_Desert,1,x+mouse_posx*1.4,y+mouse_posy*1.4);

	draw_sprite(sprLevelTitle_Desert,0,x+mouse_posx*1.2,y+mouse_posy*1.2);
	
	
		draw_sprite(sprLevelTitles,2,room_width/2,room_height/2);
	}
	
	
			if(level == 3) //Jungle
	{
		//draw_sprite(sprLevelTitle_Jungle,0,x+mouse_posx,y+mouse_posy);
	draw_sprite(sprLevelTitle_Jungle,6,x+mouse_posx*1.8,y+mouse_posy*1.8);
	draw_sprite(sprLevelTitle_Jungle,5,x+mouse_posx*1.7,y+mouse_posy*1.7);
	draw_sprite(sprLevelTitle_Jungle,4,x+mouse_posx*1.6,y+mouse_posy*1.6);
	draw_sprite(sprLevelTitle_Jungle,3,x+mouse_posx*1.5,y+mouse_posy*1.5);
	draw_sprite(sprLevelTitle_Jungle,2,x+mouse_posx*1.4,y+mouse_posy*1.4);
	draw_sprite(sprLevelTitle_Jungle,1,x+mouse_posx*1.3,y+mouse_posy*1.3);
	draw_sprite(sprLevelTitle_Jungle,0,x+mouse_posx*1.2,y+mouse_posy*1.2);

	draw_sprite(sprLevelTitles,3,room_width/2,room_height/2);
	
	}
	

	
			if(level == 4) //Metro
	{
		//draw_sprite(sprLevelTitle_Metro,0,x+mouse_posx,y+mouse_posy);
	draw_sprite(sprLevelTitle_Metro,4,x+mouse_posx*2,y+mouse_posy*2);

	draw_sprite(sprLevelTitle_Metro,3,x+mouse_posx*1.8,y+mouse_posy*1.8);

	draw_sprite(sprLevelTitle_Metro,2,x+mouse_posx*1.6,y+mouse_posy*1.6);

	draw_sprite(sprLevelTitle_Metro,1,x+mouse_posx*1.4,y+mouse_posy*1.4);

	draw_sprite(sprLevelTitle_Metro,0,x+mouse_posx*1.2,y+mouse_posy*1.2);
	
	
		draw_sprite(sprLevelTitles,5,room_width/2,room_height/2); //title 
	}
	
			if(level == 5) //Oceana
	{
		draw_sprite(sprLevelTitle_Oceana,12,x+mouse_posx,y+mouse_posy);
	draw_sprite(sprLevelTitle_Oceana,11,x+mouse_posx*2.6,y+mouse_posy*2.6);
	draw_sprite(sprLevelTitle_Oceana,10,x+mouse_posx*2.4,y+mouse_posy*2.4);
	draw_sprite(sprLevelTitle_Oceana,9,x+mouse_posx*2.2,y+mouse_posy*2.2);
	draw_sprite(sprLevelTitle_Oceana,8,x+mouse_posx*2,y+mouse_posy*2);
	draw_sprite(sprLevelTitle_Oceana,7,x+mouse_posx*1.9,y+mouse_posy*1.9);
	draw_sprite(sprLevelTitle_Oceana,6,x+mouse_posx*1.8,y+mouse_posy*1.8);
	draw_sprite(sprLevelTitle_Oceana,5,x+mouse_posx*1.7,y+mouse_posy*1.7);
	draw_sprite(sprLevelTitle_Oceana,4,x+mouse_posx*1.6,y+mouse_posy*1.6);
	draw_sprite(sprLevelTitle_Oceana,3,x+mouse_posx*1.5,y+mouse_posy*1.5);
	draw_sprite(sprLevelTitle_Oceana,2,x+mouse_posx*1.4,y+mouse_posy*1.4);
	draw_sprite(sprLevelTitle_Oceana,1,x+mouse_posx*1.3,y+mouse_posy*1.3);
	draw_sprite(sprLevelTitle_Oceana,0,x+mouse_posx*1.2,y+mouse_posy*1.2);
	
	
		if ocean_animation=1 then draw_sprite(sprLevelTitles,11,room_width/2,room_height/2);
		if ocean_animation=2 then  draw_sprite(sprLevelTitles,12,room_width/2,room_height/2);
		if ocean_animation=3 then draw_sprite(sprLevelTitles,13,room_width/2,room_height/2);
		
		draw_sprite(sprLevelTitles,11,room_width/2,room_height/2); //title
	}
	
			if(level == 6) //Cosmos
	{
		background_color=c_black;
		draw_sprite(sprStars_BG,0,x+mouse_posx,y+mouse_posy);
		draw_sprite(sprStars_BG,1,x+mouse_posx*1.5,y+mouse_posy*1.5);
		draw_sprite(sprStars_BG,2,x+mouse_posx*2,y+mouse_posy*2);
	
		draw_sprite(sprLevelTitles,8,room_width/2,room_height/2); //title
	}
}

*/
