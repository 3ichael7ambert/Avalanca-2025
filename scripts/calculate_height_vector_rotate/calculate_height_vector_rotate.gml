/**
 * @brief Calculates and updates the positions of layered sprites based on the camera's position.
 *
 * This function computes the relative directional offsets for each sprite layer 
 * using the current position of the object and the camera. It then updates the
 * position of each sprite in the layered sprite array accordingly.
 */
/**
 * @brief Calculates and updates the positions of layered sprites based on the camera's position.
 *
 * This function computes the relative directional offsets for each sprite layer 
 * using the current position of the object and the camera. It then updates the
 * position of each sprite in the layered sprite array accordingly.
 */
function calculate_height_vector_rotate(_layered_sprite_array, xto = x, yto = y, rotate=undefined) {
    // Calculate the directional vector based on the object's position relative to the camera's center
	//var _camFocal = global.camera.get_focal_point();
    //_layered_sprite_array.point_vector.x = (xto - _camFocal[0]) / _layered_sprite_array.offset;
    //_layered_sprite_array.point_vector.y = (yto - _camFocal[1]) / _layered_sprite_array.offset;
    _layered_sprite_array.point_vector.x = (xto - (global.camera.x + global.camera.w / 2)) / _layered_sprite_array.offset;
    _layered_sprite_array.point_vector.y = (yto - (global.camera.y + global.camera.h / 2)) / _layered_sprite_array.offset;

    /// Update the positions of all sprites in the layered sprite array
    for (var i = 0; i < array_length(_layered_sprite_array.sprites); i++) {
        // Retrieve the data for the current layer
        var _tileData = _layered_sprite_array.sprites[i];
        var _offset = _tileData.shift; // Get the pre-calculated offset for this layer

        // Calculate the new position offset for this layer
        var _dx = _layered_sprite_array.point_vector.x * _offset;
        var _dy = _layered_sprite_array.point_vector.y * _offset;

        // Update the sprite's position with the new offset values
        layer_sprite_position(_tileData.tile, xto + _dx, yto + _dy);
		
		if(!is_undefined(rotate)){
			layer_sprite_angle(_tileData.tile, rotate);	
		}
    }
}
