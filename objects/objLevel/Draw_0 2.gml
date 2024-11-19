/// @description Insert description here
// You can write your code in this editor




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


















