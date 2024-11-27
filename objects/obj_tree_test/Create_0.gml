/// @description setup

/// randomize
var height = [0, irandom_range(6,8)];
var scale = [random_range(0.9, 1.1), random_range(0.1, 0.3)];
var layers = random_range(6,7);
var rotate = [irandom_range(0, 360),irandom_range(0, 360)];

/// setup
setup_height_vector(,layers,height,scale,,rotate);