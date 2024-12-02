/**
 * @brief Calculates and updates the positions of layered sprites based on the camera's position.
 *
 * This function calculates the `dx` and `dy` offsets for each layer based on the shadow's direction
 * and saves them in the sprite struct. For non-shadow tiles, `dx` and `dy` will be 0, 0.
 *
 * @param _layered_sprite_array_shadows {struct} - The array containing the layered sprite data.
 * @param xto {number} - The target X-coordinate for the base position of the shadow.
 * @param yto {number} - The target Y-coordinate for the base position of the shadow.
 */
function calculate_height_vector_shadow(_layered_sprite_array_shadows, xto = x, yto = y) {
    if (!is_struct(_layered_sprite_array_shadows) || !is_array(_layered_sprite_array_shadows.sprites)) {
        show_error("Invalid layered sprite array passed to calculate_height_vector_shadow.", true);
        return;
    }

    // Recalculate normalized direction vector based on the shadow's setup
    var sprites = _layered_sprite_array_shadows.sprites;
    var direction_x = _layered_sprite_array_shadows.direction.x ?? 0; // Default to 0 if not a shadow
    var direction_y = _layered_sprite_array_shadows.direction.y ?? 0; // Default to 0 if not a shadow
	var dir = _layered_sprite_array_shadows.direct ?? 0; // Default to 0 if not a shadow
	var lay = _layered_sprite_array_shadows.layered ?? 0; // Default to 0 if not a shadow
	var dis = _layered_sprite_array_shadows.distance ?? 0; // Default to 0 if not a shadow

    for (var i = 0; i < array_length(sprites); i++) {
        var _tileData = sprites[i];
        var _offset = _tileData.shift;

        // Calculate position offsets
		
        var _dx = direction_x * _offset;
        var _dy = direction_y * _offset;
		
		//var _dx = lengthdir_x(dis,dir);
		//var _dy = lengthdir_y(dis,dir);

        // Save the offsets in the sprite struct
        _tileData.dx = _dx;
        _tileData.dy = _dy;

        // Update the position of the sprite
       layer_sprite_position(_tileData.tile, xto + _dx, yto + _dy);
    }
}
