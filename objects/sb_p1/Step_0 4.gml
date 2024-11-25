script_execute(p1_step_av,0,0,0,0,0);

if keyboard_check(vk_left)&& keyboard_check(vk_right) then prep=true;


if prep=true && jump=0 {
if !keyboard_check(vk_left)&& !keyboard_check(vk_right) then { jump=3; prep=false; }
}

obj_avalanche.y-=2;
for (var i = 0; i <= 4; i++) {
    if (device_mouse_check_button_pressed(i, mb_left))
{
        mousePressedDeviceIndex = i;
    }
}


for (var i = 0; i <= 4; i++) {
    if (device_mouse_check_button(i, mb_left) && i==mousePressedDeviceIndex)
    {
        if device_mouse_x(i)<sb_p1.x { hspeed-=.6;}
        if device_mouse_x(i)>sb_p1.x { hspeed+=.6;}
        obj_avalanche.y+=1;
    }
}

for (var i = 0; i <= 4; i++) {
    if (device_mouse_check_button_released(i, mb_left))
    {
        if (i==mousePressedDeviceIndex) {
             mousePressedDeviceIndex = -1;
        }
    }
}


for (var i = 0; i <= 4; i++) {
j=i+1;
if j>4 then j=0;
    if (device_mouse_check_button_released(i, mb_left)) && (device_mouse_check_button_released(j, mb_left) )
    {
        if (i==mousePressedDeviceIndex) && jump=0 {
            jump=2;
        }
    }
                            }

__view_set( e__VW.WView, 0, 800+(10*(abs(hspeed) + obj_LvlControl.AvaSpeed + sb_p1.image_xscale + sb_p1.image_yscale)) );
__view_set( e__VW.HView, 0, 600+(10*(abs(hspeed) + obj_LvlControl.AvaSpeed + sb_p1.image_xscale + sb_p1.image_yscale)) );






if level == 0 { // Snow level
    if vehicle == 0 { // Snowboard
        // Code for snowboard step event
    }
    else if vehicle == 1 { // Snow Mobile
        // Code for snow mobile step event
    }
    else if vehicle == 2 { // Skis
        // Code for skis step event
    }
}
else if level == 1 { // Desert level
    if vehicle == 0 { // Sandboard
        // Code for sandboard step event
    }
    else if vehicle == 1 { // Bike
        // Code for bike step event
    }
}
else if level == 2 { // Jungle level
    if vehicle == 0 { // Bike
        // Code for bike step event
    }
}
else if level == 3 { // Forest level
    if vehicle == 0 { // Bike
        // Code for bike step event
    }
}
else if level == 4 { // Water level
    if vehicle == 0 { // Surf
        // Code for surf step event
    }
    else if vehicle == 1 { // Jet Ski
        // Code for jet ski step event
    }
    else if vehicle == 2 { // Water Ski
        // Code for water ski step event
    }
}
else if level == 5 {
	if vehicle == 0 { // Surf
        // Code for surf step event
    }
    else if vehicle == 1 { // Jet Ski
        // Code for jet ski step event
    }
    else if vehicle == 2 { // Water Ski
        // Code for water ski step event
    }
}


