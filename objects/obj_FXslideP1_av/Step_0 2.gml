	image_xscale-=(sb_p1_av.speed/2000);
	image_yscale-=(sb_p1_av.speed/2000);
	image_alpha-=(sb_p1_av.speed/500);
	if image_alpha<0 then instance_destroy();
