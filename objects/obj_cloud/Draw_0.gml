/*repeat (thickness)
{
draw_sprite_ext(spr_cloud,1,x, y, .7-size,.7-size,image_angle,c_white,1);
draw_sprite_ext(spr_cloud,0,x+x_dist*10, y+y_dist*10, 1-size,1-size,image_angle,c_white,1);
draw_puff+=1;
}*/
i=0;
while i<thickness
{
draw_sprite_ext(spr_cloud,1,x+puff[i], y+puff[i], .7-size,.7-size,image_angle,c_white,1);
draw_sprite_ext(spr_cloud,0,x+puff[i]+x_dist*10, y+puff[i]+y_dist*10, 1-size,1-size,image_angle,c_white,1);
i+=1;
}

if i>=thickness i=0;


/* */
/*  */
