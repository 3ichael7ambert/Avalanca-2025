/**
 * @brief Sets up a layered height vector with configurable scaling, layers, and visual properties.
 *
 * This function creates a series of sprites with varying offsets, scales, colors, and angles,
 * arranged in a layered structure to simulate depth or height. The properties of the layers
 * are interpolated based on their position within the structure.
 *
 * @param _scaling {number} - The base scaling factor for the sprite offset. Defaults to 32.
 * @param layers {number} - The number of layers to generate. Defaults to 6.
 * @param height_spread {array<number>} - Array defining the range of offsets for height. Defaults to [0, 6].
 * @param scale_range {array<number>} - Array defining the scale range for the sprites. Defaults to [1, 0.2].
 * @param color_range {array<number>} - Array defining the color range for blending. Defaults to [c_dkgray, c_white].
 * @param angle_range {array<number>} - Array defining the range of rotation angles in degrees. Defaults to [0, 0].
 */
function setup_height_vector_angle(
    _scaling = 32, 
    layers = 6, 
    height_spread = [0, 6], 
    scale_range = [1, 0.2], 
    color_range = [c_dkgray, c_white], 
    angle_range = [0, 0],
	sprite = sprite_index
) {
    // Directional vector used to calculate offsets for each layer
    var point_vector = new Vector2(1, 0);
    // Base scaling factor for layer offsets
    var offset = _scaling;
    // Array to store all generated layered sprites
    var _layered_sprite_array = [];

    // Build each layered sprite object
    for (var i = 0; i < layers; i++) {
        // Calculate interpolation ratio for the current layer
        var _ratio = clamp((i + 1) / layers, 0, 1);

        // Interpolated offset distance for this layer
        var _offset = lerp(height_spread[0], height_spread[1], _ratio);
        // Interpolated scale factor for this layer
        var _scale = lerp(scale_range[0], scale_range[1], _ratio);
        // Interpolated color for blending this layer
        var _color = merge_color(color_range[0], color_range[1], _ratio);
        // Interpolated rotation angle for this layer
        var _rotate = lerp(angle_range[0], angle_range[1], _ratio);

        // Calculate position offsets based on direction vector
        var _dx = point_vector.x * _offset;
        var _dy = point_vector.y * _offset;

        // Create a new tile and add it to the depth controller
        var _tile = global.sprite_depth_controller.add_tile(
            x + _dx,		// x-coordinate with offset
            y + _dy,		// y-coordinate with offset
            sprite,	// Index of the sprite to use
            i,				// Image index of the sprite
            -_offset		// Depth adjustment
        );

        // Apply visual properties to the tile
        layer_sprite_blend(_tile, _color);   // Set blend color
        layer_sprite_scale(_tile, _scale, _scale); // Set scale
        layer_sprite_angle(_tile, _rotate); // Set rotation angle

        // Store the tile and its shift value in the layered sprite array
        _layered_sprite_array[i] = {
            tile: _tile,
            shift: _offset
        };
    }
	return {sprites: _layered_sprite_array, offset, point_vector};
}
