/// Initialize

//GMLive
if (live_call()) return live_result;

/*
LEVELS
0 Sky -gravity
1 space -no gravity
2  sky top- no gravity
3 city top - no gravity
4 moon - gravity
5 asteroids
6 desert beach
7 forest top - no gravity
8-ocean top
9 desert side
10 city side - no gravity
11 forest side - gravity
12 Jungle side

*/

if level>8 then level=0;
if level<0 then level=8;

var kUp = keyboard_check(k_up);
var kLeft = keyboard_check_pressed(k_left)
var kRight = keyboard_check_pressed(k_right);
var kEnter = keyboard_check(k_enter);
//store number of options in current menu
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//screw
//screw animation
for (var i=0; i<=7; i++;)
{
	screw+=1;
}
if screw>7 {screw=0;}
screw+=1;

//if  kRight then level+=1;
//if kLeft then level-=1;
/*
if kEnter and option=2 {level+=1}

if kEnter and level = 0 and option=0 then room_goto(r_level);
if kEnter and level = 1 and option=0 then room_goto(r_level);
if kEnter and level = 2 and option=0 then room_goto(r_level);
if kEnter and level = 3 and option=0 then room_goto(rm_City);
if kEnter and level = 4 and option=0 then room_goto(r_level);
if kEnter and level = 5 and option=0 then room_goto(r_level);
if kEnter and level = 6 and option=0 then room_goto(r_level);
if kEnter and level = 7 and option=0 then room_goto(r_level);
if kEnter and level = 8 and option=0 then room_goto(r_level);
*/
//health-=1;


if off_on =0 { offline="Offline"; 
option[3]="Offline"; }
if off_on =1 { offline="Online"; 
option[3]="Online";}
if off_on>1 then off_on=0;


	op_length=array_length(option);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


if kEnter && pos=0
{room_goto(r_level);}

if accept_key 
{
	
switch(pos) {
	case 0: if level=3 then {room_goto(rm_City)} else {room_goto(r_level)};break;
	case 1:ship+=1; break;
	case 2:	level+=1; break;
	case 3: off_on+=1; break;
	case 4: break;
	case 5: exit; break;
}
}

if ship>3 then ship=0;