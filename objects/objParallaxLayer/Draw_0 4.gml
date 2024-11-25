/// @description Draw layer

//layer_background_create(id1,sprite);
//sprite=draw_background_tiled_ext(image, x, y, 1, 1, colour, alpha);



// Draw a tiled background using the created layer
//draw_self(); // This draws the rest of the scene without the background layer
//layer_set_target(global.back_layer);
draw_background_tiled_ext_animated(image, img_index, x, y, 1, 1, colour, alpha);
//layer_set_target(-1); // Reset the drawing target to the default layer

//layer_set