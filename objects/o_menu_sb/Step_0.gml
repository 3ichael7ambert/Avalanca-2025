/// @description Movement

// Gradual change of direction
if (changeDirectionTimer > 0) {
    changeDirectionTimer -= 1;
    var targetSpeed = choose(-1, 1) * irandom_range(2, 4);
    hspeed += (targetSpeed - hspeed) / 10; // Adjust the divisor to control the speed of the change
} else {
    // Reset the timer for the next change of direction
    changeDirectionTimer = room_speed * irandom_range(6, 12);
}

// Move horizontally within the specified range
x += hspeed;

// Clamp x within the specified range
x = clamp(x, room_width / 3 - 100, room_width / 3 + 100);

// Set image angle
image_angle = -90 + (2 * hspeed);
image_angle_alt=image_angle+90;

// Create an instance
slide = instance_create(x, y, obj_menu_slide);

//Hair
if hair_frame<0 {hair_frame=3;}
hair_frame-=hair_speed;

if pedals>13 {pedals=4;}
if pedals<4 {pedals=13;}
pedals+=1;
pedals_feet_x+=pedals;
pedals_feet_y+=pedals;

wheels_m+=1;
if wheels_m >2 {wheels_m=0;}

wheels_atv+=1;
if wheels_atv >3 {wheels_atv=0;}

pedals_offset = max(4, min(13, 4 + abs(9 - pedals)));
left_shoe_x = x + lengthdir_x(25 + pedals_offset * 4, image_angle + 180 - 25);
left_shoe_y = y + lengthdir_y(25 + pedals_offset * 4, image_angle + 180 - 25);
right_shoe_x = x + lengthdir_x(75 - pedals_offset * 4, image_angle - 180 + 25);
right_shoe_y = y + lengthdir_y(75 - pedals_offset * 4, image_angle - 180 + 25);
