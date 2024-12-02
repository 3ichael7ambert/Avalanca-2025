/// @description Insert description here
// You can write your code in this editor
/// @description remove sprites

//remove_vecorized_sprites(sprite_array_base);
//remove_vecorized_sprites(sprite_array_pole1);
//remove_vecorized_sprites(sprite_array_pole2);

/// @description Remove sprite arrays when the object is destroyed or no longer needed

// Remove all vectorized sprites related to various arrays
remove_vecorized_sprites(sprite_array_shoes);
if shoe_type=2 {
remove_vecorized_sprites(sprite_array_shoes_holes);
remove_vecorized_sprites(sprite_array_shoes_lace);
}
remove_vecorized_sprites(sprite_array_snowboard);
remove_vecorized_sprites(sprite_array_hair);
remove_vecorized_sprites(sprite_array_hands);
if shirt_type=1 {
remove_vecorized_sprites(sprite_array_shirt1);
}
if shirt_type=2 {
remove_vecorized_sprites(sprite_array_shirt2a);
remove_vecorized_sprites(sprite_array_shirt2b);
remove_vecorized_sprites(sprite_array_shirt3);
}
remove_vecorized_sprites(sprite_array_face_skin);
remove_vecorized_sprites(sprite_array_face_band2);
remove_vecorized_sprites(sprite_array_face_glasses_band);
remove_vecorized_sprites(sprite_array_face_glasses);
if shoe_type=2||shoe_type=3 {
remove_vecorized_sprites(sprite_array_shoes_tip);
}
