/// @initialize
globalvar level, menuScreen,gameMode,vehicleName, gameModeName, levelName, oldLevel,vehicle;
level=0;
menuScreen=0;
gameMode=0;
menuScreen=0;
menu=0;
vehicleName="Snowboard";
gameModeName="Avalanche";
levelName="Blizzard";
oldLevel=0;
vehicle=0;
roomSpeed=10;
buttonPressed=false;

//SALOMON
alarm[1]=50;
depth=-10000;

application_surface_draw_enable(true);

ocean_animation=0;

c_color=c_white;
//Environment
sunDirection=random(360);
o_menuMain.shadowSize=10;

	var lay_id = layer_get_id("backgroundLayer");
	var back_id = layer_background_get_id(lay_id);
	layer_background_htiled(back_id,true);
	layer_background_vtiled(back_id,true);
    layer_vspeed(lay_id, -roomSpeed);

//TITLE
fadeSpeed = 0.05; 
init_alpha=1;
alpha=0;
wiggleAmplitude = 5;
wiggleFrequency = 0.1; 
wiggleOffset = sin(wiggleFrequency * current_time) * wiggleAmplitude;
wiggleTimer=10;
wiggle=true;
wiggling=10;
/*
LEVELS
*/

k_right =vk_right;
k_left =vk_left;
k_up=vk_up;
k_down=vk_down;
k_enter=vk_enter;

//health=100;

off_on =0;
offline="Offline";

width=640;
height=640;

op_border=32;
op_space=32;
pos = 0;

op_length = 0;
menu_level = 0;

option[0]=" Start ";
option[1]=string("< "+ levelName +" >");
option[2]=string("< "+ gameModeName + " >");
option[3]=string("< " + vehicleName + " >");
option[4]="Quit Game";


op_length=array_length(option);

draw_set_font(fnt_monogram);

setup_spawn_object();
//Main
//level
//character


/*
0 Snow
2 water
3 forest
4 ocean
5 jungle
6 city
7 cosmos
*/


// cursorLevitate will be used to keep a variable that
// oscillates and moves the cursor back and forth
cursorLevitate = 0;


// cursorTime will be used as the "angle" of a sin function
// in conjunction with cursorlevitate to oscillate the cursor
cursorTime = 0;

// The rate at which the cursor oscillates. Higher value means faster
leviRate = 1.5;


// Holds what menu element is selected. Ex: if selected = 1, 
// then the selected element is Options.
selected = 0;
selectLerp = 0; // Same as previous line but for lerp (smooth movement)
lerpAmt = 0.2; // Higher number -> faster cursor (between 0 and 1)


// Spacing between each menu element when drawn
spacing = 32;


// Color of the menu element when selected
selectedCol = c_white;

// Color of the menu element when not selected
notSelectedCol = c_black;

// Game title color
titleCol = c_white;


// Title of your game
gameTitle = "Avalanca";

// Size of the title
titleSize = 3;


// Button to move up the menu
upButt = vk_up;

// Button to move down the menu
downButt = vk_down;

// Button to confirm menu choice
confirmButt = vk_space;


//
// BG
//

x=room_width/2;
y=room_height/2;








///Snow -ski jet board
///Deset - board, bike
///jungle - bike
///forest - bike
///water -  surf jet ski
///space - board and mobile
///city - skate scooter bike motorcycle
///




