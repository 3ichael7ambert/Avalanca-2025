/// @description instance_rotate_carousel()
function instance_rotate_carousel() {

	//rotates carousel UI elements 
	//can be used with all elements, wich had scaling factors and position

	//change this value form mouse_x to other variable to change type of sliding
	output_x=mouse_x;

	deg+=(output_x-global.place_x)/100*global.sensitivity
	angle=deg*pi/180

	image_xscale=(y-(global.scaling*20))/(global.place_y+global.rad_y-(global.scaling*20));
	image_yscale=(y-(global.scaling*20))/(global.place_y+global.rad_y-(global.scaling*20));

	x=(global.rad_x*sin(angle))*global.spin_dir+global.place_x;
	depth=-((y+1)*global.rad_y*2);

	y=global.rad_y*cos(angle)+global.place_y;



}
