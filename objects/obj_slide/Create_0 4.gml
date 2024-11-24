	//direction=sb_p1.direction;
	if instance_exists(objPlayer)	{target=objPlayer;}
	if instance_exists(sb_p1_av)	{target=sb_p1_av;}
	image_xscale=target.scale*1;
	image_yscale=target.scale+.2;
	image_angle=target.image_angle+90;
	//vspeed=__background_get( e__BG.VSpeed, 0 );

depth=target.depth+1;