/**
 * @brief Calculates and updates the positions of layered sprites based on the camera's position.
 *
 * This function computes the relative directional offsets for each sprite layer 
 * using the current position of the object and the camera. It then updates the
 * position of each sprite in the layered sprite array accordingly.
 */
function calculate_height_vector() {
    // Calculate the directional vector based on the object's position relative to the camera's center
    point_vector.x = (x - (global.camera.x + global.camera.w / 2)) / offset;
    point_vector.y = (y - (global.camera.y + global.camera.h / 2)) / offset;

    /// Update the positions of all sprites in the layered sprite array
    for (var i = 0; i < array_length(layered_sprite_array); i++) {
        // Retrieve the data for the current layer
        var _tileData = layered_sprite_array[i];
        var _offset = _tileData.shift; // Get the pre-calculated offset for this layer

        // Calculate the new position offset for this layer
        var _dx = point_vector.x * _offset;
        var _dy = point_vector.y * _offset;

        // Update the sprite's position with the new offset values
        layer_sprite_position(_tileData.tile, x + _dx, y + _dy);
    }
}
