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

// Set maximum speed
var maxSpeed = 10; // Adjust the maximum speed as needed

// Apply friction
var maxFriction = 0.95; // Maximum friction factor
var minFriction = 0.75; // Minimum friction factor
var relativeThreshold = 5; // Angle threshold for relative friction

// Calculate the friction factor based on the direction angle and speed
var absDirection = abs(direction);
var frictionFactor;

if (absDirection == 0 || absDirection == 180) {
    frictionFactor = maxFriction; // Set maximum friction when direction is 0 or 180
} else if (absDirection > 0 && absDirection < 180) {
    frictionFactor = lerp(maxFriction, minFriction, absDirection / 180);
	gravity=.1;
	//UP
	// Gradual friction between maxFriction and minFriction
} else {
    frictionFactor = lerp(minFriction, maxFriction, (360 - absDirection) / 180);
	gravity=.1;// Gradual friction between minFriction and maxFriction
}

// Apply friction to the momentum
momentum *= frictionFactor;

// Apply momentum to the speed
speed += momentum;

// Limit the speed to the maximum speed
speed = clamp(speed, -maxSpeed, maxSpeed);

// Move the player based on the updated speed and direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);


/// JUMP
zscale = zindex / 100;

// Check if the space button is pressed
if (kSpace && jumpTimer <= 0) {
    jumpTimer = jumpDuration;
}

// Update the jump animation timer
if (jumpTimer > 0) {
    jumpTimer -= 1 / room_speed;
    var t = 1 - (jumpTimer / jumpDuration); // Calculate the current time progress

    // Calculate the Bézier curve value for zindex
    var controlPoints = [1, 3, 8, 10]; // Adjust the control points as needed
    var bezierValue = bezier(t, controlPoints);

    // Interpolate the zindex value based on the Bézier curve
    zindex = jumpStartZIndex + (jumpEndZIndex - jumpStartZIndex) * bezierValue;

    // Apply additional downward momentum during the jump
    momentum -= 0.5; // Adjust the downward momentum value as needed

    // Apply increased gravity when facing upwards
    if (zindex > jumpStartZIndex + (jumpEndZIndex - jumpStartZIndex) / 2) {
        momentum -= 0.5; // Adjust the increased downward momentum value as needed
    }
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




//friction

if direction<0 then direction+=360;
if direction>360 then direction-=360;

if (angle > 0 && angle < 90) {
    friction = angleDifference/90;
} else if (angle > 90 && angle < 180) {
    friction = (angleDifference-90)/90;
} else  if (angle > 180 && angle < 270) {
    friction = (angleDifference-180)/90; // Adjust the value range if needed
}
 else if (angle > 270 && angle < 360) {
	 friction = (angleDifference-270)/90;
 }
	 

// Friction Calculation
angleDifference = abs(image_angle - direction);
var frictionFactor;

if (angleDifference < 90) {
    frictionFactor = smoothstep(0, 90, angleDifference) / 90;
} else if (angleDifference > 90 && angleDifference < 180) {
    frictionFactor = smoothstep(90, 180, angleDifference) / 90;
} else if (angleDifference > 180 && angleDifference < 270) {
    frictionFactor = smoothstep(180, 270, angleDifference) / 90;
} else if (angleDifference > 270 && angleDifference < 360) {
    frictionFactor = smoothstep(270, 360, angleDifference) / 90;
}


// Apply friction to the momentum
momentum *= frictionFactor;

// Apply momentum to the speed
speed += momentum;

// Limit the speed to the maximum speed
speed = clamp(speed, -maxSpeed, maxSpeed);

// Move the player based on the updated speed and direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

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


// Apply gravity to change the direction and image angle
if (gravityActive) {
    oldDirection = direction; // Store the previous direction
    direction -= 180;
    image_angle -= 180;
}
// Smoothly transition the head turn based on the target direction
var targetDirection; // Variable to store the target direction value
// Set the target direction based on your logic
targetDirection = image_angle;/* Calculate the target direction */;

// Gradually adjust the old direction towards the target direction
if (oldDirection > targetDirection) {
    oldDirection -= 1; // Adjust the speed as needed
} else if (oldDirection < targetDirection) {
    oldDirection += 1; // Adjust the speed as needed
}

// Update the drawn sprites with the adjusted direction
// Draw the head sprite using the oldDirection value
//draw_sprite_ext(spr_head, 0, x, y, image_xscale, image_yscale, oldDirection, c_white, 1);
// Draw other sprites using the adjusted direction as needed
