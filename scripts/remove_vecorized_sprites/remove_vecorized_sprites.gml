function remove_vecorized_sprites(_layered_sprite_array){
	for(var i = 0; i < array_length(_layered_sprite_array.sprites); i++){
		layer_sprite_destroy(_layered_sprite_array.sprites[i]);
	}
}
