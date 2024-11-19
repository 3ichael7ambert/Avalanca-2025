// Control
if gamepad_is_connected(0) {
    // Gamepad is plugged in, set controls to gamepad
    // Use gamepad inputs for control
    
    var kUp = gamepad_button_check_pressed(0, gp_padu);
    var kDown = gamepad_button_check_pressed(0, gp_padd);
    var kLeft = gamepad_button_check(0, gp_padl);
    var kRight = gamepad_button_check(0, gp_padr);
    var kShoot = gamepad_button_check(0, gp_face1);
    var kSpace = gamepad_button_check(0, gp_face2);
}else{
var kUp = keyboard_check(k_up);
var kLeft = keyboard_check(k_left);
var kRight = keyboard_check(k_right);
var kShoot = keyboard_check(k_shoot);
var kSpace = keyboard_check(k_space);
}


// Handle controls
if level == 0 {
    image_angle = direction;

    if (kLeft || kRight) {
        if (kLeft) {
            direction += 4; // Adjust the rotation speed as needed
        }
        if (kRight) {
            direction -= 4; // Adjust the rotation speed as needed
        }
    }

    if (kUp) {
        momentum += 0.1; // Adjust the momentum value as needed
    }
}

if level == 1 {
    image_angle = direction;

    if (kLeft || kRight) {
        if (kLeft) {
            direction += 4; // Adjust the rotation speed as needed
        }
        if (kRight) {
            direction -= 4; // Adjust the rotation speed as needed
        }
    }

    if (kUp) {
        momentum += 0.1; // Adjust the momentum value as needed
    }
}


if level == 2 {
    image_angle = direction;

    if (kLeft || kRight) {
        if (kLeft) {
            direction += 4; // Adjust the rotation speed as needed
        }
        if (kRight) {
            direction -= 4; // Adjust the rotation speed as needed
        }
    }

    if (kUp) {
        momentum += 0.1; // Adjust the momentum value as needed
    }
}

if level == 3 {
    image_angle = direction;

    if (kLeft || kRight) {
        if (kLeft) {
            direction += 4; // Adjust the rotation speed as needed
        }
        if (kRight) {
            direction -= 4; // Adjust the rotation speed as needed
        }
    }

    if (kUp) {
        momentum += 0.1; // Adjust the momentum value as needed
    }
}

if level == 4 {
    image_angle = direction;

    if (kLeft || kRight) {
        if (kLeft) {
            direction += 4; // Adjust the rotation speed as needed
        }
        if (kRight) {
            direction -= 4; // Adjust the rotation speed as needed
        }
    }

    if (kUp) {
        momentum += 0.1; // Adjust the momentum value as needed
    }
}

if level == 5 {
    image_angle = direction;

    if (kLeft || kRight) {
        if (kLeft) {
            direction += 4; // Adjust the rotation speed as needed
        }
        if (kRight) {
            direction -= 4; // Adjust the rotation speed as needed
        }
    }

    if (kUp) {
        momentum += 0.1; // Adjust the momentum value as needed
    }
}

if level == 6 {
    image_angle = direction;

    if (kLeft || kRight) {
        if (kLeft) {
            direction += 4; // Adjust the rotation speed as needed
        }
        if (kRight) {
            direction -= 4; // Adjust the rotation speed as needed
        }
    }

    if (kUp) {
        momentum += 0.1; // Adjust the momentum value as needed
    }
}


// Limit the momentum to a certain range
momentum = clamp(momentum, -5, 5); // Adjust the momentum range as needed

if level == 100 {
    // Boosting
    if (kUp) {
        if (direction > 0 && direction < 180) {
            motion_add(image_angle, 1);
            var rot = boost_rotate;
            with(instance_create(x, y, objTrail))
			{
				direction=objPlayer.direction;
				image_xscale=objPlayer.image_xscale;
				image_yscale=objPlayer.image_yscale;
			}
			
        }
    } else {
        var rot = rotate;
    }

    // Rotating
    if (kLeft || kRight) {
        if (kLeft) {
            image_angle += rot;
            if (image_angle > 360) {
                image_angle -= 360;
            }
        }
        if (kRight) {
            image_angle -= rot;
            if (image_angle < 0) {
                image_angle += 360;
            }
        }
        image_index = (image_angle / 360) * image_number;
    }

    // Firing
    if (shoot_cooldown <= 0) {
        if (kShoot) {
            var a;
            a = instance_create(x, y, objPlaneFire);
            a.parent = id;
            a.image_angle = image_angle;
            a = instance_create(x, y, objBullet);
            a.direction = image_angle;
            a.hspeed += hspeed;
            a.vspeed += vspeed;
            shoot_cooldown = 10;
        }
    }
    shoot_cooldown--;
}
