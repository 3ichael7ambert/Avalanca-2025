exit;

/*draw_sprite_ext(spr_tree,0,x-x_dist*2, y-y_dist*2, .5,.5,image_angle/2,c_white,1);
draw_sprite_ext(spr_tree,1,x-x_dist, y-y_dist, .5,.5,image_angle/3,c_white,1);
draw_sprite_ext(spr_tree,2,x, y, .5,.5,image_angle/4,c_white,1);
draw_sprite_ext(spr_tree,3,x+x_dist, y+y_dist, .5,.5,image_angle/5,c_white,1);
draw_sprite_ext(spr_tree,4,x+x_dist*2, y+y_dist, .5,.5,image_angle/6,c_white,1);
*/

//block
draw_sprite_ext(spr_FenceBorder,0,x, y, _scale,_scale,0,c_white,1);
//log
draw_sprite_ext(spr_FenceBorder,1,x+x_dist, y+y_dist, _scale-.1,_scale+.1,0,c_white,1);
//block
draw_sprite_ext(spr_FenceBorder,2,
x+x_dist*2+x_dist+lengthdir_x(5*_scale,dir),
y+lengthdir_y(50*_scale,-dir), 
_scale,_scale,0,c_white,1);
//log
draw_sprite_ext(spr_FenceBorder,3,x+x_dist*3, y+y_dist*3, _scale-.1,_scale+.1,0,c_white,1);
//block
draw_sprite_ext(spr_FenceBorder,4,
x+x_dist*4+x_dist+lengthdir_x(5*_scale,dir),
y+lengthdir_y(100*_scale,-dir), 
_scale,_scale,0,c_white,1);


/* */
/*  */
