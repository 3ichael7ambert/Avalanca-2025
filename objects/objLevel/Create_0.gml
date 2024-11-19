/// @description Create objects
randomize();
globalvar round_lvl;
round_lvl=1;
/*
globalvar level, vehicle;
level=undefined;
vehicle=undefined;
if is_undefined(level) {level=0;}
if is_undefined(vehicle) {vehicle=0;}
*/

lvl360=true;
if (lvl360=true) {
width360=3840;
height360=2160;
camera_set_view_size(view_camera[0], width360, height360);
}

roomSpeed=10;
score =0;

with (instance_create(0, 0, objCamera))
{
   target = instance_create_layer(__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.HView, 0 )/2, "InstancesPlayer",objPlayer);
}



var lay_id = layer_get_id("backgroundLayer");
var back_id = layer_background_get_id(lay_id);
layer_background_htiled(back_id,true);
layer_background_vtiled(back_id,true);
	
if level=0 { //BLIZZARD
__background_set_colour(c_white);
create_parallax_layer(snowBG, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer(sprCloudBG, -0.4, -0.4, 0.1, 0, -510, c_white, .2);
create_parallax_layer(sprCloudBG, -.8, -.8, 0.1, 0, -1010, c_white, .3);
}
if level=1 { //DESERT
__background_set_colour(c_white);
create_parallax_layer(sprSand, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer(sprCloudBG, -0.4, -0.4, 0.1, 0, -510, c_white, .2);
create_parallax_layer(sprCloudBG, -.8, -.8, 0.1, 0, -1010, c_white, .3);
}
if level=2 { //JUNGLE
__background_set_colour(c_white);
create_parallax_layer(sprGrassJungle, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer(sprCloudBG, -0.4, -0.4, 0.1, 0, -510, c_white, .2);
create_parallax_layer(sprCloudBG, -.8, -.8, 0.1, 0, -1010, c_white, .3);
}
if level=3 { //FOREST
__background_set_colour(c_white);
create_parallax_layer(sprGrassForest, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer(sprCloudBG, -0.4, -0.4, 0.1, 0, -510, c_white, .2);
create_parallax_layer(sprCloudBG, -.8, -.8, 0.1, 0, -1010, c_white, .3);
}
if level=4 {//OCEAN
__background_set_colour(c_white);
create_parallax_layer_animated(sprOcean,ocean_animation, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer_animated(sprOcean,ocean_animation, -0.4, -0.4, 0.1, 0, -510, c_white, .2);
create_parallax_layer_animated(sprSand,0, -.8, -.8, 0.1, 0, -1010, c_white, .3);
}
if level=5 { //METRO
__background_set_colour(c_white);
create_parallax_layer(sprConcreate, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer(sprCloudBG, -0.4, -0.4, 0.1, 0, -510, c_white, .2);
create_parallax_layer(sprCloudBG, -.8, -.8, 0.1, 0, -1010, c_white, .3);
}
if level=6 {//COSMOS
__background_set_colour(c_white);
create_parallax_layer(sprStars_BG, 0, 0, 0, 0, 1000, c_white, 1);
create_parallax_layer(sprStars_BG2, 0.4, 0.4, 0.1, 0, -510, c_white, .2);
create_parallax_layer(sprStars_BG3, .8, .8, 0.1, 0, -1010, c_white, .3);
}

_wport = irandom(view_get_wport(view_camera[0]));
_hport = irandom(view_get_hport(view_camera[0]));
sunPosition_x = view_get_xport(view_camera[0]) + _wport;
sun_Position_y = view_get_yport(view_camera[0]) + _hport;

//alarm[0] = room_speed;


///Set random background colour
/*__background_set_colour( choose(
                    make_colour_rgb(240, 220, 160),
                    make_colour_rgb(200, 230, 240),
                    make_colour_rgb(200, 240, 200),
                    make_colour_rgb(240, 180, 180),
                    ) );
*/
