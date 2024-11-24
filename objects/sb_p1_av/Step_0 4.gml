	image_angle=/*(direction+270)*/2*hspeed;
	//if keyboard_check(vk_left)=true
	//then {direction=direction+1};
	
if (alive) {
    // Keyboard controls
    if (keyboard_check(vk_left) && jump == 0) hspeed -= 0.4;
    if (keyboard_check(vk_right) && jump == 0) hspeed += 0.4;

    // Gamepad controls
    if (gamepad_is_connected(0)) {
        if (gamepad_button_check(0, gp_padl) && jump == 0) hspeed -= 0.4;
        if (gamepad_button_check(0, gp_padr) && jump == 0) hspeed += 0.4;

        // Gamepad analog stick controls
        var gp_axislh_ = gamepad_axis_value(0, gp_axislh);
        if (gp_axislh_ < -0.25 && jump == 0) hspeed -= 0.4;
        if (gp_axislh_ > 0.25 && jump == 0) hspeed += 0.4;
    }
}



	if hspeed>=10 then hspeed=10;
	if hspeed<=-10 then hspeed=-10;
	if speed>0 then {instance_create(x,y,obj_FXslideP1_av);}

	if jump=0 {depth=0; repeat (speed) {instance_create(x,y,obj_snowdust_av);}}

	if jump=1 {image_xscale+=.05;depth=-1000;image_yscale+=.05;}
	if jump=2 {image_xscale-=.05;depth=-1000;image_yscale-=.05;}
	if image_xscale>=1 {jump=2;}
	if image_xscale<=scale {jump=0;image_xscale=scale;image_yscale=scale;}

	if hspeed>obj_LvlControl.AvaSpeed && hspeed>0 {hspeed=obj_LvlControl.AvaSpeed;}
	if hspeed>obj_LvlControl.AvaSpeed && hspeed<0 {hspeed=-obj_LvlControl.AvaSpeed;}

	if hp<=0 {alive=false;}
	
	if alive=true {
		visible=true;
	}
	if alive = false {
		visible=false;
	}
	
	
	/*
	body_angle=image_angle-90;//(image_angle+180)/2;
	head_angle=image_angle-90;//(body_angle+180)/2;
	
	image_angle_alt=image_angle;
	////
	body_angle=(image_angle+270)/2;
	head_angle=(body_angle+270)/2;
	image_angle_alt=image_angle+90;
	*/
	image_angle = -90 + (2 * hspeed);
	image_angle_alt=image_angle+90;

if vehicle_pre_angle<image_angle_alt {vehicle_pre_angle+=1;}
if vehicle_pre_angle>image_angle_alt {vehicle_pre_angle-=1;}


	/*
//----------------------------------------------------///
// Step event
image_xscale=scale;
image_yscale=scale;



///////
//debug
image_angle_alt=image_angle+90;
//level=0;
/////


body_angle=(image_angle+270)/2;
head_angle=(body_angle+270)/2;

if vehicle_pre_angle<image_angle_alt {vehicle_pre_angle+=1;}
if vehicle_pre_angle>image_angle_alt {vehicle_pre_angle-=1;}


// Control
var kSpace = keyboard_check_pressed(k_space);

/// JUMP
zscale = zindex / 100;

// Check if the space button is pressed
if (kSpace && jumpTimer <= 0) {
    jumpTimer = jumpDuration;
}



//Hair
if (speed > 0) then {
    // Increment hair_frame based on speed
    hair_frame += speed/10;
    
    // Check if hair_frame exceeds the maximum frame
    if (hair_frame > 3) {
        hair_frame = 0; // Reset hair_frame to the first frame
    }
}





//-------------------------------------------//
//WHEELS PEDALS
if pedals>13 {pedals=4;}
if pedals<4 {pedals=13;} //13?
pedals+=1;
pedals_feet_x+=pedals;
pedals_feet_y+=pedals;

wheels_m+=1;
if wheels_m >2 {wheels_m=0;}

wheels_atv+=1;
if wheels_atv >3 {wheels_atv=0;}

pedals_offset = max(4, min(13, 4 + abs(9 - pedals)));

// Create an instance
slide = instance_create(x, y, obj_slide);

pedals_offset = max(4, min(13, 4 + abs(9 - pedals)));



//-------------------------------------------//


// Update the drawn sprites with the adjusted direction
// Draw the head sprite using the oldDirection value
//draw_sprite_ext(spr_head, 0, x, y, image_xscale, image_yscale, oldDirection, c_white, 1);
// Draw other sprites using the adjusted direction as needed


