/**
 * @brief Sets up a layered shadow vector with configurable scaling, layers, and visual properties.
 *
 * This function creates a series of sprites with offsets based on distance and direction,
 * simulating a layered shadow effect. The shadow properties are interpolated across the layers.
 *
 * @param _scaling {number} - The base scaling factor for the sprite offset. Defaults to 32.
 * @param layers {number} - The number of layers to generate. Defaults to 6.
 * @param height_spread {array<number>} - Array defining the range of offsets for height. Defaults to [0, 0].
 * @param scale_range {array<number>} - Array defining the scale range for the sprites. Defaults to [1, 0.2].
 * @param color_range {array<number>} - Array defining the color range for blending. Defaults to [c_black, c_black].
 * @param angle_range {array<number>} - Array defining the range of rotation angles in degrees. Defaults to [0, 0].
 * @param sprite {sprite_index} - The sprite resource to use. Defaults to `sprite_index`.
 * @param shadow_dis {number} - Maximum distance of the shadow's displacement.
 * @param shadow_x {number} - X-coordinate of the shadow's direction vector.
 * @param shadow_y {number} - Y-coordinate of the shadow's direction vector.
 * @param _alpha {number} - Alpha transparency for the shadow. Defaults to 0.5.
 */
function setup_height_vector_shadow(
    _scaling = 32, 
    layers = 6, 
    height_spread = [0, 0], 
    scale_range = [1, 0.2], 
    color_range = [c_black, c_black], 
    angle_range = [0, 0],
    sprite = sprite_index,
    shadow_dis = 50,
    shadow_x = 1,
    shadow_y = 0,
    _alpha = 0.5
) {
    var point_vector = new Vector2(0, 0); // Initialize point_vector
    var offset = _scaling;
    var _layered_sprite_array_shadows = [];

    var magnitude = sqrt(shadow_x * shadow_x + shadow_y * shadow_y);
    if (magnitude != 0) {
        shadow_x /= magnitude;
        shadow_y /= magnitude;
    }

    for (var i = 0; i < layers; i++) {
        var _ratio = clamp((i + 1) / layers, 0, 1);
        var _offset = lerp(height_spread[0], height_spread[0], _ratio);
        var _scale = lerp(scale_range[0], scale_range[1], _ratio);
        var _color = merge_color(color_range[0], color_range[1], _ratio);
        var _rotate = lerp(angle_range[0], angle_range[1], _ratio);
		var dir = point_direction(x,y,shadow_x,shadow_y)
		
		//var shadow_dx = lengthdir_x(shadow_dis*layers+100,dir);
		//var shadow_dy = lengthdir_y(shadow_dis*layers+100,dir);
		var shadow_dx = lengthdir_x(shadow_dis*layers,dir);
		var shadow_dy = lengthdir_y(shadow_dis*layers,dir);
		
       // var shadow_dx = shadow_x * shadow_dis * _ratio;
      //  var shadow_dy = shadow_y * shadow_dis * _ratio;

        var _tile = global.sprite_depth_controller.add_tile(
            x + shadow_dx,
            y + shadow_dy,
            sprite,
            i,
            -_offset
        );

        layer_sprite_blend(_tile, _color);
        layer_sprite_scale(_tile, _scale, _scale);
        layer_sprite_angle(_tile, _rotate);
        layer_sprite_alpha(_tile, lerp(_alpha, 0, _ratio));

        _layered_sprite_array_shadows[i] = {
            tile: _tile,
            shift: _offset
        };
    }

    return {
        sprites: _layered_sprite_array_shadows,
        offset: offset,
        point_vector: point_vector, // Include initialized point_vector
        direction: { x: shadow_x, y: shadow_y },
        distance: shadow_dis,
		dx: shadow_dx,   
		dy: shadow_dy,
		direct: dir,
		layered: layers
    };
}
