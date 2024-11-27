function init_layer_manager(){
	// compile at runtime
	gml_pragma("global", "init_layer_manager()");
	
	// layer manager
	global.sprite_depth_controller = new sprite_layer_manager_class();
}