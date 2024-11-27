// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
	sprite_layer_class
	creates a new struct that manages a single sprite layer
	makes it easier to create sprites / tiles and destroy the layer / sprites
*/
function sprite_layer_class(_depth = 0) constructor{
	_layer = layer_create(_depth);
	_tiles = [];
	/*
		creates a new layer sprite for the layer created in the object
		modify using
		layer_sprite_* functions
	*/
	static add_sprite = function(_x, _y, _sprite){
		var _spr = layer_sprite_create(self._layer, _x, _y, _sprite);
		array_push(_tiles, _spr);
		return _spr;
	};
	
	/*
		call this to before deleting the struct
	*/
	static cleanup = function(){
		for(var i = 0; i < array_length(_tiles); i++){
			if(layer_sprite_exists(_layer, _tiles[i])){
				layer_sprite_destroy(_tiles[i]);
			}
		}
		_tiles = [];
		layer_destroy(_layer);
	};
}

/*
	sprite_layer_add_sprite
	add a sprite to a layer that exists at the specified depth
	returns the sprite index
*/
function sprite_layer_add_sprite(_layerManager, _sprite, _x, _y, _depth=0){
	return _layerManager.add_sprite(_x, _y, _sprite, _depth);
}
/*
	sprite_layer_add_tile
	add a "tile" (single index of sprite) to a layer that exists at the specified depth
	returns the "tile" index
*/
function sprite_layer_add_tile(_layerManager, _sprite, _index, _x, _y, _depth=0){
	return _layerManager.add_tile(_x, _y, _sprite, _index, _depth);
}


/*
	sprite_layer_manager_class,
	
	this function is used for dynamically placing sprites anywhere in the room
	
	how it works:
	this object manages the tile / sprite depth dynamically
	by creating a new layer automatically for each depth assigned
	and re-using any that already exist
	it stores all of them in "sources"
*/
function sprite_layer_manager_class() constructor {
	
	/// keep all layer sources here
	sources = {};
	
	/*
		Add sprite to layer at depth, create a new layer if not found
	*/
	static add_sprite = function(_x, _y, _sprite, _depth){
		
		/// layer name (key) set to match the depth
		var layer_name = $"lay{_depth}";
		
		/// create key if it doesn't exist in sources
		if(!variable_struct_exists(self.sources, layer_name)){
			variable_struct_set(self.sources, layer_name, new sprite_layer_class(_depth));
		}
		
		/// if struct failes to be created or found, we want to know
		if(!is_struct(self.sources[$ layer_name])) show_error("Something went wrong adding sprite, struct invalid", true);
		
		/// add sprite to the correct layer and return the id
		return self.sources[$ layer_name].add_sprite(_x, _y, _sprite);
	};
	
	/*
		Add tile to layer at depth, create a new layer if not found
		_x, _y, _sprite, _index, _depth
	*/
	static add_tile = function(_x, _y, _sprite, _index, _depth){
		var _tile = add_sprite(_x, _y, _sprite, _depth);
		layer_sprite_speed(_tile, 0);
		layer_sprite_index(_tile, _index);
		return _tile;
	};
	
	static cleanup = function(){
		struct_foreach(self.sources, function(_key, _value){
			_value.cleanup();
		});
		self.sources = {};
	};
}


function layer_sprite_position(sprite, xto, yto){
	layer_sprite_x(sprite, xto);
	layer_sprite_y(sprite, yto);
}

function layer_sprite_scale(sprite, xs, ys){
	layer_sprite_xscale(sprite, xs);
	layer_sprite_yscale(sprite, ys);
}