/*draw_sprite_ext(spr_tree,0,x-x_dist*2, y-y_dist*2, .5,.5,image_angle/2,c_white,1);
draw_sprite_ext(spr_tree,1,x-x_dist, y-y_dist, .5,.5,image_angle/3,c_white,1);
draw_sprite_ext(spr_tree,2,x, y, .5,.5,image_angle/4,c_white,1);
draw_sprite_ext(spr_tree,3,x+x_dist, y+y_dist, .5,.5,image_angle/5,c_white,1);
draw_sprite_ext(spr_tree,4,x+x_dist*2, y+y_dist, .5,.5,image_angle/6,c_white,1);
*/


//Tundra
if level=0 {
	
draw_sprite_ext(spr_tree,0,x, y, 1-size,1-size,image_angle/7,c_white,1);
draw_sprite_ext(spr_tree,1,x+x_dist, y+y_dist, 1-size,1-size,image_angle/6,c_white,1);
draw_sprite_ext(spr_tree,2,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
draw_sprite_ext(spr_tree,3,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/4,c_white,1);
draw_sprite_ext(spr_tree,4,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/3,c_white,1);
draw_sprite_ext(spr_tree,5,x+x_dist*5, y+y_dist*5, 1-size,1-size,image_angle/2,c_white,1);
draw_sprite_ext(spr_tree,6,x+x_dist*6, y+y_dist*6, 1-size,1-size,image_angle/1,c_white,1);
draw_sprite_ext(spr_tree,7,x+x_dist*7, y+y_dist*7, 1-size,1-size,image_angle*2,c_white,1);

//shadow
draw_sprite_ext(spr_tree,0,x+lengthdir_x(shadowSize,sunDirection),y+lengthdir_y(shadowSize,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);
draw_sprite_ext(spr_tree,1,x+lengthdir_x(shadowSize*2,sunDirection),y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);
draw_sprite_ext(spr_tree,2,x+lengthdir_x(shadowSize*3,sunDirection),y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);
draw_sprite_ext(spr_tree,3,x+lengthdir_x(shadowSize*4,sunDirection),y+lengthdir_y(shadowSize*4,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);
draw_sprite_ext(spr_tree,4,x+lengthdir_x(shadowSize*5,sunDirection),y+lengthdir_y(shadowSize*5,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);
draw_sprite_ext(spr_tree,5,x+lengthdir_x(shadowSize*6,sunDirection),y+lengthdir_y(shadowSize*6,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);
draw_sprite_ext(spr_tree,6,x+lengthdir_x(shadowSize*7,sunDirection),y+lengthdir_y(shadowSize*7,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);
draw_sprite_ext(spr_tree,7,x+lengthdir_x(shadowSize*8,sunDirection),y+lengthdir_y(shadowSize*8,sunDirection), 1-size,1-size,image_angle/6,c_black,.1);

}


//Desert
if level=1 {
//Shadow
draw_sprite_ext(sprPalmTree, 0, x, y, 1 - size, 1 - size, image_angle / 7, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 0, x + lengthdir_x(shadowSize, sunDirection), y + lengthdir_y(shadowSize, sunDirection), 1 - size, 1 - size, image_angle / 6, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 1, x + lengthdir_x(shadowSize * 2, sunDirection), y + lengthdir_y(shadowSize*2,sunDirection), 1 - size, 1 - size, image_angle / 6, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 1, x + lengthdir_x(shadowSize * 3, sunDirection), y + lengthdir_y(shadowSize * 3, sunDirection), 1 - size, 1 - size, image_angle / 5, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 2, x + lengthdir_x(shadowSize * 4, sunDirection), y + lengthdir_y(shadowSize * 4,sunDirection), 1 - size, 1 - size, image_angle / 5, c_black, 0.1);

	
//Tree
draw_sprite_ext(sprPalmTree,0,x, y, 1-size,1-size,image_angle/7,c_white,1);
draw_sprite_ext(sprPalmTree,0,x+x_dist, y+y_dist, 1-size,1-size,image_angle/6,c_white,1);
draw_sprite_ext(sprPalmTree,1,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
draw_sprite_ext(sprPalmTree,1,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/4,c_white,1);
draw_sprite_ext(sprPalmTree,2,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/3,c_white,1);

draw_sprite_ext(sprPalmTree, 3, x + lengthdir_x(shadowSize * 5, sunDirection), y + lengthdir_y(shadowSize * 5, sunDirection), 1 - size, 1 - size, image_angle * leaf1, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 4, x + lengthdir_x(shadowSize * 5, sunDirection), y + lengthdir_y(shadowSize*2,sunDirection), 1 - size, 1 - size, image_angle * leaf2, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 3, x + lengthdir_x(shadowSize * 6, sunDirection), y + lengthdir_y(shadowSize * 6, sunDirection), 1 - size, 1 - size, image_angle * leaf3, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 4, x + lengthdir_x(shadowSize * 6, sunDirection), y + lengthdir_y(shadowSize*2,sunDirection), 1 - size, 1 - size, image_angle * leaf4, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 3, x + lengthdir_x(shadowSize * 7, sunDirection), y + lengthdir_y(shadowSize * 7, sunDirection), 1 - size, 1 - size, image_angle * leaf5, c_black, 0.1);
draw_sprite_ext(sprPalmTree, 4, x + lengthdir_x(shadowSize * 7, sunDirection), y + lengthdir_y(shadowSize*2,sunDirection), 1 - size, 1 - size, image_angle * leaf6, c_black, 0.1);

draw_sprite_ext(sprPalmTree,3,x+x_dist*5, y+y_dist*5, 1-size,1-size,image_angle+leaf1,c_white,1);
draw_sprite_ext(sprPalmTree,4,x+x_dist*6, y+y_dist*6, 1-size,1-size,image_angle+leaf2,c_white,1);
draw_sprite_ext(sprPalmTree,3,x+x_dist*7, y+y_dist*7, 1-size,1-size,image_angle+leaf3,c_white,1);
draw_sprite_ext(sprPalmTree,4,x+x_dist*5, y+y_dist*5, 1-size,1-size,image_angle+leaf4,c_white,1);
draw_sprite_ext(sprPalmTree,3,x+x_dist*6, y+y_dist*6, 1-size,1-size,image_angle+leaf5,c_white,1);
draw_sprite_ext(sprPalmTree,4,x+x_dist*7, y+y_dist*7, 1-size,1-size,image_angle+leaf6,c_white,1);
}


//Jungle
if level=3 {
	
draw_sprite_ext(sprTreeJungle,jungleTree,x, y, 1-size,1-size,image_angle/7,c_white,1);
draw_sprite_ext(sprTreeJungle,jungleTree,x+x_dist*1, y+y_dist*1, 1-size,1-size-.1,image_angle/5,c_white,1);
draw_sprite_ext(sprTreeJungle,jungleTree,x+x_dist*2, y+y_dist*2, 1-size-.1,1-size-.1,image_angle/3,c_white,1);
draw_sprite_ext(sprTreeJungle,jungleTree,x+x_dist*3, y+y_dist*3, 1-size-.2,1-size-.2,image_angle/1,c_white,1);

draw_sprite_ext(sprTreeJungle,jungleTree,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size,1-size,image_angle/7,c_black,.1);
draw_sprite_ext(sprTreeJungle,jungleTree,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size-.1,1-size-.1,image_angle/5,c_black,.1);
draw_sprite_ext(sprTreeJungle,jungleTree,x + lengthdir_x(shadowSize * 3, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size-.2,1-size-.2,image_angle/3,c_black,.1);
draw_sprite_ext(sprTreeJungle,jungleTree,x + lengthdir_x(shadowSize * 4, sunDirection), y+lengthdir_y(shadowSize*4,sunDirection), 1-size-.2,1-size-.2,image_angle/1,c_black,.1);

}

//Forest
if level=2 {
	
	//Pink
	if forestTree=1 {
		draw_sprite_ext(sprPalmTree,0,x, y, 1-size-.8,1-size-.8,image_angle/7,c_white,1);
		draw_sprite_ext(sprPalmTree,0,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size-.6,1-size-.6,image_angle/7,c_black,.1);
		
		draw_sprite_ext(sprTree,0,x+x_dist, y+y_dist, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,0,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);
		
		
		draw_sprite_ext(sprTree,3,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,3,x + lengthdir_x(shadowSize * 3, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);
		
		draw_sprite_ext(sprTree,3,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,3,x + lengthdir_x(shadowSize * 4, sunDirection), y+lengthdir_y(shadowSize*4,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);
		
	}
	
	if forestTree=2 {
		draw_sprite_ext(sprPalmTree,0,x, y, 1-size-.8,1-size-.8,image_angle/7,c_white,1);
		draw_sprite_ext(sprPalmTree,0,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size-.4,1-size-.4,image_angle/7,c_black,.1);
		
		draw_sprite_ext(sprTree,0,x+x_dist, y+y_dist, 1-size,1-size,image_angle/6,c_white,1);
		draw_sprite_ext(sprTree,0,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		
		draw_sprite_ext(sprTree,3,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/6,c_white,1);
		draw_sprite_ext(sprTree,3,x + lengthdir_x(shadowSize * 4, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,0,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/4,c_white,1);
		draw_sprite_ext(sprTree,0,x + lengthdir_x(shadowSize * 5, sunDirection), y+lengthdir_y(shadowSize*4,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,3,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/4,c_white,1);
		draw_sprite_ext(sprTree,3,x + lengthdir_x(shadowSize * 6, sunDirection), y+lengthdir_y(shadowSize*5,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

	}
	//Green 1
	if forestTree=3 {
		draw_sprite_ext(sprPalmTree,0,x, y, 1-size-.8,1-size-.8,image_angle/7,c_white,1);
		draw_sprite_ext(sprPalmTree,0,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size,1-size,image_angle/7,c_black,.1);
		
		draw_sprite_ext(sprTree,1,x+x_dist, y+y_dist, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,1,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		
		draw_sprite_ext(sprTree,4,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,4,x + lengthdir_x(shadowSize * 3, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

	}
	if forestTree=3 {
		draw_sprite_ext(sprPalmTree,0,x, y, 1-size-.8,1-size-.8,image_angle/7,c_white,1);
		draw_sprite_ext(sprPalmTree,0,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size,1-size,image_angle/7,c_black,.1);
		
		draw_sprite_ext(sprTree,1,x+x_dist, y+y_dist, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,1,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,4,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,4,x + lengthdir_x(shadowSize * 3, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,1,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/3,c_white,1);
		draw_sprite_ext(sprTree,1,x + lengthdir_x(shadowSize * 4, sunDirection), y+lengthdir_y(shadowSize*4,sunDirection), 1-size,1-size,image_angle/5,c_black,0.1);

		draw_sprite_ext(sprTree,4,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/3,c_white,1);
		draw_sprite_ext(sprTree,4,x + lengthdir_x(shadowSize * 5, sunDirection), y+lengthdir_y(shadowSize*5,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

	}
	//Green 2
	if forestTree=4 {
		draw_sprite_ext(sprPalmTree,0,x, y, 1-size-.8,1-size-.8,image_angle/7,c_white,1);
		draw_sprite_ext(sprPalmTree,0,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size,1-size,image_angle/7,c_black,.1);
		
		draw_sprite_ext(sprTree,2,x+x_dist, y+y_dist, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,2,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,5,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
		draw_sprite_ext(sprTree,5,x + lengthdir_x(shadowSize * 3, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

	}
	if forestTree=5 {
		draw_sprite_ext(sprPalmTree,0,x, y, 1-size-.8,1-size-.8,image_angle/7,c_white,1);
		draw_sprite_ext(sprPalmTree,0,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size,1-size,image_angle/7,c_black,.1);
		
		draw_sprite_ext(sprTree,2,x+x_dist, y+y_dist, 1-size,1-size,image_angle/6,c_white,1);
		draw_sprite_ext(sprTree,2,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,5,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/6,c_white,1);
		draw_sprite_ext(sprTree,5,x + lengthdir_x(shadowSize * 3, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,2,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/4,c_white,1);
		draw_sprite_ext(sprTree,2,x + lengthdir_x(shadowSize * 4, sunDirection), y+lengthdir_y(shadowSize*4,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,5,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/4,c_white,1);
		draw_sprite_ext(sprTree,5,x + lengthdir_x(shadowSize * 5, sunDirection), y+lengthdir_y(shadowSize*5,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

	}	
	//Green Mix
	if forestTree=6 {
		draw_sprite_ext(sprPalmTree,0,x, y, 1-size-.8,1-size-.8,image_angle/7,c_white,1);
		draw_sprite_ext(sprPalmTree,0,x + lengthdir_x(shadowSize, sunDirection), y+lengthdir_y(shadowSize,sunDirection), 1-size,1-size,image_angle/7,c_black,.1);
		
		draw_sprite_ext(sprTree,1,x+x_dist, y+y_dist, 1-size,1-size,image_angle/6,c_white,1);
		draw_sprite_ext(sprTree,1,x + lengthdir_x(shadowSize * 2, sunDirection), y+lengthdir_y(shadowSize*2,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,4,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/6,c_white,1);
		draw_sprite_ext(sprTree,4,x + lengthdir_x(shadowSize * 3, sunDirection), y+lengthdir_y(shadowSize*3,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,2,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/4,c_white,1);
		draw_sprite_ext(sprTree,2,x + lengthdir_x(shadowSize * 4, sunDirection), y+lengthdir_y(shadowSize*4,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

		draw_sprite_ext(sprTree,5,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/4,c_white,1);
		draw_sprite_ext(sprTree,5,x + lengthdir_x(shadowSize * 5, sunDirection), y+lengthdir_y(shadowSize*5,sunDirection), 1-size,1-size,image_angle/5,c_black,.1);

	}
	
}

//Forest
/*
if level=3 {
draw_sprite_ext(spr_tree,0,x, y, 1-size,1-size,image_angle/7,c_white,1);
draw_sprite_ext(spr_tree,1,x+x_dist, y+y_dist, 1-size,1-size,image_angle/6,c_white,1);
draw_sprite_ext(spr_tree,2,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
draw_sprite_ext(spr_tree,3,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/4,c_white,1);
draw_sprite_ext(spr_tree,4,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/3,c_white,1);
draw_sprite_ext(spr_tree,5,x+x_dist*5, y+y_dist*5, 1-size,1-size,image_angle/2,c_white,1);
draw_sprite_ext(spr_tree,6,x+x_dist*6, y+y_dist*6, 1-size,1-size,image_angle/1,c_white,1);
draw_sprite_ext(spr_tree,7,x+x_dist*7, y+y_dist*7, 1-size,1-size,image_angle*2,c_white,1);
}
*/
//Water
if level=4 {
	
	/*
draw_sprite_ext(sprite_index,0,x, y, 1-size,1-size,image_angle/7,c_white,1);
draw_sprite_ext(sprite_index,1,x+x_dist, y+y_dist, 1-size,1-size,image_angle/6,c_white,1);
draw_sprite_ext(sprite_index,2,x+x_dist*2, y+y_dist*2, 1-size,1-size,image_angle/5,c_white,1);
draw_sprite_ext(sprite_index,3,x+x_dist*3, y+y_dist*3, 1-size,1-size,image_angle/4,c_white,1);
draw_sprite_ext(sprite_index,4,x+x_dist*4, y+y_dist*4, 1-size,1-size,image_angle/3,c_white,1);
draw_sprite_ext(sprite_index,5,x+x_dist*5, y+y_dist*5, 1-size,1-size,image_angle/2,c_white,1);
draw_sprite_ext(sprite_index,6,x+x_dist*6, y+y_dist*6, 1-size,1-size,image_angle/1,c_white,1);
draw_sprite_ext(sprite_index,7,x+x_dist*7, y+y_dist*7, 1-size,1-size,image_angle*2,c_white,1);
*/
}


draw_text(0,0,string_hash_to_newline(x_dist));
draw_text(20,20,string_hash_to_newline(y_dist));

/* */
/*  */
