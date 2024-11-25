/// @description sPlayer_carcontrol();
function sPlayer_carcontrol() {
	keys_init(); //edit keys_init script for change controls
	//left
	if key_left{
	phy_rotation+=phy_speed/2
	}
	//right
	if key_right{
	phy_rotation-=phy_speed/2
	}
	//acceleration
	if key_up{
	physics_apply_local_force(0, 0, 0, 250*spd);
	}
	//brake
	if key_down{
	physics_apply_local_force(0, 0, 0, -250*spd);
	}

if gamepad_is_connected(0) {
	//left
	if gamepad_button_check(0, gp_padl) {
	phy_rotation-=phy_speed/2
	}
	//right
	if gamepad_button_check(0, gp_padr) {
	phy_rotation+=phy_speed/2
	}
	//acceleration
	if gamepad_button_check(0, gp_padu) ||  gamepad_button_check(0, gp_face1) {
	physics_apply_local_force(0, 0, 0, 250*spd);
	}
	//brake
	if gamepad_button_check(0, gp_padu) ||  gamepad_button_check(0, gp_face2) {
	physics_apply_local_force(0, 0, 0, -250*spd);
	}


}

}
