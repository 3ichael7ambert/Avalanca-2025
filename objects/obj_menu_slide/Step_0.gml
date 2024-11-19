	image_xscale-=.001;
	//image_yscale-=.01;
	image_alpha-=(.05);
	if image_alpha<0 then instance_destroy();
	image_angle=o_menu_sb.image_angle+90;
	y-=o_menuMain.roomSpeed;


if y<-200 instance_destroy();
if image_xscale<0 || image_yscale<0 {instance_destroy();}