/// @description Insert description here
// You can write your code in this editor
if level=0 {
draw_self();
draw_rectangle_color(0,0,room_width,bbox_top,_c,_c,_c,_c,false);
}
if level>=1 && level<=3 {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,_c,1);
	draw_rectangle_color(x,0,room_width,bbox_top,_c,_c,_c,_c,false);

}












