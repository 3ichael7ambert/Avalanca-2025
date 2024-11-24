/// @description create_parallax_layer(image, x_follow, y_follow, x_speed, y_speed, depth, colour, alpha);
/// @param image
/// @param  x_follow
/// @param  y_follow
/// @param  x_speed
/// @param  y_speed
/// @param  depth
/// @param  colour
/// @param  alpha
function create_parallax_layer_animated(img,sub_img, x_follow, y_follow, x_speed, y_speed, depthh, col, alpha) {
	var a = instance_create(0, 0, objParallaxLayer);
	a.image = img;
	a.img_index=sub_img;
	a.x_follow = x_follow;
	a.y_follow = y_follow;
	a.x_speed = x_speed;
	a.y_speed = y_speed;
	a.depth = depthh;
	a.colour = col;
	a.alpha = alpha;
	return a;



}
