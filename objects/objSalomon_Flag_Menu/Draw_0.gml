// Step Event: Calculate distances and depth
x_dist1 = (x - target_x) / 50;
y_dist1 = (y - target_y) / 50;
x_dist = clamp(x_dist1, -10, 10);
y_dist = clamp(y_dist1, -10, 10);

//depth = distance_to_object(sb_p1_av);

vspeed = __background_get(e__BG.VSpeed, 0);

if (y < -100) {
    instance_destroy();
}

//shadow
//draw_sprite_ext(sprSalomon_Pole,0,lp_x+lengthdir_x(o_menuMain.shadowSize,o_menuMain.sunDirection),lp_y+lengthdir_y(o_menuMain.shadowSize,o_menuMain.sunDirection), scale,scale,o_menuMain.sunDirection,c_black,.1);
//draw_sprite_ext(sprSalomon_Pole,1,rp_x+lengthdir_x(o_menuMain.shadowSize*2,o_menuMain.sunDirection),rp_y+lengthdir_y(o_menuMain.shadowSize*2,o_menuMain.sunDirection), scale,scale,o_menuMain.sunDirection,c_black,.1);
//draw_sprite_ext(sprSalomon_Flag,2,lp_x+(50*scale)+lengthdir_x(o_menuMain.shadowSize*3,o_menuMain.sunDirection),lp_y+(50*scale)+lengthdir_y(o_menuMain.shadowSize*3,o_menuMain.sunDirection), scale,scale,o_menuMain.sunDirection,c_black,.1);
/*
draw_sprite_pos(
	sprSalomon_Pole_shadow,0,
	lp_x,lp_y,
	lp_x+(50*scale),lp_y,
	lp_x+(50*scale)+lengthdir_x(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	lp_y+(50*scale)+lengthdir_y(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	lp_x+lengthdir_x(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	lp_y+lengthdir_y(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	.6
);

draw_sprite_pos(
	sprSalomon_Pole_shadow,0,
	rp_x,rp_y,
	rp_x+(50*scale),rp_y,
	rp_x+(50*scale)+lengthdir_x(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	rp_y+(50*scale)+lengthdir_y(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	rp_x+lengthdir_x(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	rp_y+lengthdir_y(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	.6
);
draw_sprite_pos(
	sprSalomon_Flag_shadow,0,
	lp_x+ (50*scale)+lengthdir_x(o_menuMain.shadowSize+(25*scale),o_menuMain.sunDirection),
	lp_y+lengthdir_y(o_menuMain.shadowSize+(25*scale),o_menuMain.sunDirection),
	rp_x+lengthdir_x(o_menuMain.shadowSize+(25*scale),o_menuMain.sunDirection),
	rp_y+lengthdir_y(o_menuMain.shadowSize+(25*scale),o_menuMain.sunDirection),
	rp_x+lengthdir_x(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	rp_y+(50*scale)+lengthdir_y(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection)
	,lp_x+ (50*scale)+lengthdir_x(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	lp_y+lengthdir_y(o_menuMain.shadowSize+(50*scale),o_menuMain.sunDirection),
	.6
);
*/




/*
// Left Pole Shadow
draw_sprite_pos(
    sprSalomon_Pole_shadow, 0,
    lp_x, lp_y,  // Bottom-left
    lp_x + (50 * scale), lp_y,  // Bottom-right
    lp_x + (50 * scale) + lengthdir_x(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Top-right
    lp_y + lengthdir_y(o_menuMain.shadowSize + (1000 * scale), o_menuMain.sunDirection),  // Top-right y
    lp_x + lengthdir_x(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Top-left
    lp_y + lengthdir_y(o_menuMain.shadowSize + (1000 * scale), o_menuMain.sunDirection),  // Top-left y
    0.6  // Alpha
);


// Right Pole Shadow
draw_sprite_pos(
    sprSalomon_Pole_shadow, 0,
    rp_x, rp_y,  // Bottom-left
    rp_x + (50 * scale), rp_y,  // Bottom-right
    rp_x + (50 * scale) + lengthdir_x(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Top-right
    rp_y + lengthdir_y(o_menuMain.shadowSize + (1000 * scale), o_menuMain.sunDirection),  // Top-right y
    rp_x + lengthdir_x(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Top-left
    rp_y + lengthdir_y(o_menuMain.shadowSize + (1000 * scale), o_menuMain.sunDirection),  // Top-left y
    0.6  // Alpha
);


// Flag Shadow
draw_sprite_pos(
    sprSalomon_Flag_shadow, 0,
    lp_x + (50 * scale) + lengthdir_x(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Bottom-left
    lp_y + lengthdir_y(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Bottom-left y
    rp_x + lengthdir_x(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Bottom-right
    rp_y + lengthdir_y(o_menuMain.shadowSize, o_menuMain.sunDirection),  // Bottom-right y
    rp_x + lengthdir_x(o_menuMain.shadowSize + (300 * scale), o_menuMain.sunDirection),  // Top-right
    rp_y + lengthdir_y(o_menuMain.shadowSize + (186 * scale), o_menuMain.sunDirection),  // Top-right y
    lp_x + (50 * scale) + lengthdir_x(o_menuMain.shadowSize + (300 * scale), o_menuMain.sunDirection),  // Top-left
    lp_y + lengthdir_y(o_menuMain.shadowSize + (186 * scale), o_menuMain.sunDirection),  // Top-left y
    0.6  // Alpha
);
*/




if (y>target_y) {
// Bottom
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x, lp_y, 
    lp_x + (50*scale), lp_y, 
    lp_x + (50*scale) +x_offset, lp_y + y_offset, 
    lp_x +x_offset, lp_y + y_offset, 
    1);
	
		// Top
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x, lp_y-(50*scale), 
    lp_x + (50*scale), lp_y-(50*scale), 
    lp_x + (50*scale) +x_offset, lp_y + y_offset-(50*scale), 
    lp_x +x_offset, lp_y + y_offset -(50*scale), 
    1);
} else {
	
			// Top
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x, lp_y-(50*scale), 
    lp_x + (50*scale), lp_y-(50*scale), 
    lp_x + (50*scale) +x_offset, lp_y + y_offset-(50*scale), 
    lp_x +x_offset, lp_y + y_offset -(50*scale), 
    1);
	
	// Bottom
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x, lp_y, 
    lp_x + (50*scale), lp_y, 
    lp_x + (50*scale) +x_offset, lp_y + y_offset, 
    lp_x +x_offset, lp_y + y_offset, 
    1);
	


	}

if (x<target_x) {


// Left
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x, lp_y, 
    lp_x, lp_y - (50*scale), 
    lp_x  + x_offset, lp_y + y_offset-(50*scale), 
    lp_x + x_offset, lp_y + y_offset, 
    1);
	
	// Right
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x+(50*scale), lp_y, 
    lp_x+(50*scale), lp_y - (50*scale), 
    lp_x+(50*scale)  + x_offset, lp_y + y_offset-(50*scale), 
    lp_x+(50*scale) + x_offset, lp_y + y_offset, 
    1);
} else { 	
		// Right
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x+(50*scale), lp_y, 
    lp_x+(50*scale), lp_y - (50*scale), 
    lp_x+(50*scale)  + x_offset, lp_y + y_offset-(50*scale), 
    lp_x+(50*scale) + x_offset, lp_y + y_offset, 
    1);
	
	// Left
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x, lp_y, 
    lp_x, lp_y - (50*scale), 
    lp_x  + x_offset, lp_y + y_offset-(50*scale), 
    lp_x + x_offset, lp_y + y_offset, 
    1);
	

	}

// Cover
draw_sprite_pos(sprSalomon_Pole, 0, 
    lp_x+ x_offset, lp_y+ y_offset, 
    lp_x+(50*scale)+ x_offset, lp_y - (50*scale)+ y_offset, 
    lp_x+(50*scale)  + x_offset, lp_y + y_offset-(50*scale), 
    lp_x + x_offset, lp_y + y_offset, 
    1);


//RIGHT POLE
//FRONT
draw_sprite_pos(sprSalomon_Pole, 0, 
    rp_x, rp_y, 
    rp_x + (50 * scale), rp_y, 
    rp_x + (50 * scale) + x_offset, rp_y + y_offset, 
    rp_x + x_offset, rp_y + y_offset, 
    1);
//BACK 
draw_sprite_pos(sprSalomon_Pole, 0, 
    rp_x, rp_y - (50 * scale), 
    rp_x + (50 * scale), rp_y - (50 * scale), 
    rp_x + (50 * scale) + x_offset, rp_y + y_offset - (50 * scale), 
    rp_x + x_offset, rp_y + y_offset - (50 * scale), 
    1);

//left
draw_sprite_pos(sprSalomon_Pole, 0, 
    rp_x, rp_y, 
    rp_x, rp_y - (50 * scale), 
    rp_x + x_offset, rp_y + y_offset - (50 * scale), 
    rp_x + x_offset, rp_y + y_offset, 
    1);
//right
draw_sprite_pos(sprSalomon_Pole, 0, 
    rp_x + (50 * scale), rp_y, 
    rp_x + (50 * scale), rp_y - (50 * scale), 
    rp_x + (50 * scale) + x_offset, rp_y + y_offset - (50 * scale), 
    rp_x + (50 * scale) + x_offset, rp_y + y_offset, 
    1);
//Top
draw_sprite_pos(sprSalomon_Pole, 0, 
    rp_x+ x_offset, rp_y+ y_offset, 
    rp_x+(50*scale)+ x_offset, rp_y - (50*scale)+ y_offset, 
    rp_x+(50*scale)  + x_offset, rp_y + y_offset-(50*scale), 
    rp_x + x_offset, rp_y + y_offset, 
    1);

//FLAG
//FRONT
// Front face
draw_sprite_pos(sprSalomon_Flag, 0, 
    lp_x+(50*scale), lp_y-(15*scale), 
    rp_x, rp_y-(15*scale), 
    rp_x +x_offset, lp_y + y_offset-(15*scale), 
    lp_x +(50*scale)+x_offset, rp_y + y_offset-(15*scale), 
    1);
	
// Back face
draw_sprite_pos(sprSalomon_Flag, 0, 
    lp_x+(50*scale), lp_y-(35*scale), 
    rp_x, rp_y-(15*scale), 
    rp_x +x_offset, lp_y + y_offset-(35*scale), 
    lp_x +(50*scale)+x_offset, rp_y + y_offset-(35*scale), 
    1);



