	image_xscale-=(target.speed/2000);
	image_yscale-=(target.speed/2000);
	image_alpha-=(target.speed/500);
	if image_alpha<0 then instance_destroy();