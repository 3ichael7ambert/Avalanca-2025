/// @description Insert description here
// You can write your code in this editor
sunPosition_x = view_get_xport(view_camera[0]) + _wport;
sun_Position_y = view_get_yport(view_camera[0]) + _hport;


if keyboard_check_pressed(ord("R")) {
	room_restart();
}

if keyboard_check_pressed(ord("W")) {
	level-=1;
}
if keyboard_check_pressed(ord("E")) {
	level+=1;
}

if keyboard_check_pressed(ord("A")) {
	vehicle-=1;
}
if keyboard_check_pressed(ord("S")) {
	vehicle+=1;
}

if level>6 {level=0;}
if level<0 {level=6;}
if vehicle >4 {vehicle=0;}
if vehicle<0 {vehicle=4;}











