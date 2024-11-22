/// @description Insert description here
// You can write your code in this editor

if phy_active {
draw_sprite_ext(spr_snowball,phy_speed*10,x,y,scale,scale,phy_rotation-90,c_white,1);
} else {
	

draw_sprite_ext(spr_snowball,speed*10,x,y,scale,scale,image_angle-90,c_white,1);



}
if ready=true{
draw_sprite_ext(spr_snowball,phy_speed*10,x,y,scale,scale,phy_rotation-90,c_white,1);
}




