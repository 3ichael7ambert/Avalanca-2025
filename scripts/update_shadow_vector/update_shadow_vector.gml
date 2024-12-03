function update_shadow_vector(_layered_sprite_array, xto, yto){
	/// Update the positions of all sprites in the layered sprite array
    for (var i = 0; i < array_length(_layered_sprite_array.sprites); i++) {
        // Retrieve the data for the current layer
        var _tileData = _layered_sprite_array.sprites[i];

        // Calculate the new position offset for this layer
        var _dx = _tileData.dx;
        var _dy = _tileData.dy;

        // Update the sprite's position with the new offset values
        layer_sprite_position(_tileData.tile, xto + _dx, yto + _dy);
    }
}