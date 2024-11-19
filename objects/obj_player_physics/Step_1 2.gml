/// @description Insert description here
// You can write your code in this editor

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



if level>6 level=0;
if level<0 level=6;
if vehicle>4 vehicle=0;
if vehicle<0 vehicle=4;

