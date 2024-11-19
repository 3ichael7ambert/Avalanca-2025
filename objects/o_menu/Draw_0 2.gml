/// @description Insert description here
// You can write your code in this editor


/*LEVELS
0 Sky -gravity
1 space -no gravity
2  sky top- no gravity
3 city top - gravity
4 moon - gravity
5 asteroids
6 desert beach
7 forest top - no gravity
8-ocean top
9 desert side
10 city side - no gravity
11 forest side - gravity
12 Jungle side
13 Desert side
*/

//////////////////////////////////

//draw
draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);


var _new_w = 0;
for (var i=0; i<op_length; i++;)
{
	var _op_w = string_width(option[i]);
	_new_w = max(_new_w, _op_w);
	
}

width=_new_w + op_border*2;
height = op_border*2 + sprite_get_height(spr_main_font) + (op_length-1)*op_space;


//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - width/2;

//draw the options
//draw_set_font
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i=0; i<op_length; i++;)
{
	var _c = c_black;
	if pos == i { _c =c_yellow;}
	//draw_set_color(c_black);
	//draw_text(x+op_border,y+op_border+op_space*i, option[i]);
	draw_text_color(x+op_border,y+op_border+op_space*i, option[i],_c,_c,_c,_c,1);
	
	
}

//DRAW SHIP
if ship=0 {draw_sprite_ext(sprShip,0,room_width/2,room_height/4,.5,.5,270,c_white,1);}
if ship=1 {draw_sprite_ext(sprUFO2,3,room_width/2,room_height/4,.5,.5,0,c_white,1);}
if ship=2 {draw_sprite_ext(sprScrew,screw,room_width/2-50,room_height/4,.5,.5,0,c_white,1);}
if ship=2 {draw_sprite_ext(sprRocketMetal,0,room_width/2,room_height/4,.5,.5,0,c_white,1);}
if ship=3 {draw_sprite_ext(sprCan,0,room_width/2,room_height/4,.5,.5,0,c_white,1);}
	
//DRAWN LEVEL
if level=0 {draw_text_outlined(room_width/2,room_height/4,"SKY",c_white,c_black);}
if level=1 {draw_text_outlined(room_width/2,room_height/4,"SPACE",c_white,c_black);}
if level=2 {draw_text_outlined(room_width/2,room_height/4,"AERIAL",c_white,c_black);}
if level=3 {draw_text_outlined(room_width/2,room_height/4,"CITYSCAPE",c_white,c_black);}
if level=4 {draw_text_outlined(room_width/2,room_height/4,"MOONWALK",c_white,c_black);}
if level=5 {draw_text_outlined(room_width/2,room_height/4,"ASTEROIDS",c_white,c_black);}
if level=6 {draw_text_outlined(room_width/2,room_height/4,"BEACH",c_white,c_black);}
if level=7 {draw_text_outlined(room_width/2,room_height/4,"FOREST",c_white,c_black);}
if level=8 {draw_text_outlined(room_width/2,room_height/4,"OCEANA",c_white,c_black);}
if level=9 {draw_text_outlined(room_width/2,room_height/4,"DESERT",c_white,c_black);}
if level=10 {draw_text_outlined(room_width/2,room_height/4,"SKYLINE",c_white,c_black);}
if level=11 {draw_text_outlined(room_width/2,room_height/4,"FOREST SIDE",c_white,c_black);}
if level=12 {draw_text_outlined(room_width/2,room_height/4,"JUNGLE SIDE",c_white,c_black);}
if level=13 {draw_text_outlined(room_width/2,room_height/4,"RAINBOW FOREST",c_white,c_black);}


	
	//scr_draw_border_text(x, y, text, color, border, thickness, alpha)
