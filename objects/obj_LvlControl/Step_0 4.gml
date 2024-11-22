alarm[0]=random(10);
AvaSpeed+=0.5;
if AvaSpeed>20 then AvaSpeed=20;
__background_set( e__BG.VSpeed, 0, -AvaSpeed );
alarm[2]=random(5);
if sb_p1_av.alive=true {
score_+=1;
}

if sb_p1_av.alive = false && restart_menu==false {
	alarm[4]=2;
}




if sb_p1_av.alive == false && restart_menu == true {
    // Keyboard controls
    if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down) {
        res_menu_select += 1;
    }
    if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up) {
        res_menu_select -= 1;
    }

    // Gamepad controls
    var dpad_right = gamepad_button_check(0, gp_padr);
    var dpad_down = gamepad_button_check(0, gp_padd);
    var dpad_left = gamepad_button_check(0, gp_padl);
    var dpad_up = gamepad_button_check(0, gp_padu);

    if dpad_right || dpad_down {
        res_menu_select += 1;
    }
    if dpad_left || dpad_up {
        res_menu_select -= 1;
    }

    // Analog stick controls (assuming left stick)
    var stick_x = gamepad_axis_value(0, gp_axislh);
    var stick_y = gamepad_axis_value(0, gp_axislv);

    if stick_x > 0.5 || stick_y > 0.5 {
        res_menu_select += 1;
    }
    if stick_x < -0.5 || stick_y < -0.5 {
        res_menu_select -= 1;
    }
}


if res_time>res_timed {restart_menu=true;}

if res_menu_select < 0 {
	res_menu_select=1;
}

if res_menu_select >1 {
	res_menu_select=0;
}

if restart_menu=true {
    if keyboard_check_pressed(vk_enter) || gamepad_button_check(0, gp_face1) {
        if res_menu_select == 1 {
            //room_restart();
        }
        if res_menu_select == 0 {
           // game_restart();
        }
    }
}