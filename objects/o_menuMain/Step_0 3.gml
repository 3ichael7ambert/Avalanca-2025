/// Initialize

//GMLive
if (live_call()) return live_result;

/*t
*/

if level>6 {level=0;}
if level<0 {level=6;}

var kUp = keyboard_check(k_up);
var kLeft = keyboard_check_pressed(k_left)
var kRight = keyboard_check_pressed(k_right);
var kEnter = keyboard_check(k_enter);
//store number of options in current menu
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);
accept_key = keyboard_check_pressed(vk_enter);

if level=0 c_color=c_white; //SNOW
if level=1 c_color=make_color_rgb(255,234,166); //DESERT
if level=2 c_color=make_color_rgb(0,155,10); //FOREST
if level=3 c_color=make_color_rgb(103,130,23); //JUNGLE
if level=4 c_color=c_grey; //City
if level=5 c_color=c_dkgray; //SPACE

option[0]=" Start ";
option[1]=string("< "+ levelName +" >");
option[2]=string("< "+ gameModeName + " >");
option[3]=string("< " + vehicleName + " >");
option[4]="Quit Game";
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



	op_length=array_length(option);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if keyboard_check(vk_anykey) || gamepad_button_check(0,0)
{
	buttonPressed=true;
}

//if kEnter && pos=0
//{room_goto(r_level);}

if accept_key || gamepad_button_check(0,gp_face1)
{
	
switch(pos) {
	case 0:
	if gameMode=0 { //AVALANCHE
		if level=0 || level=1 || level=2 || level=3 || level=4 || level=5 || level=6{
			room_goto(rm_avalanchea_av);
		}
	}
	if gameMode=1 { //SURVIVAL
		room_goto(rm_endless);
	}
	if gameMode=2 { //RACE
		room_goto(rm_endless_race);
		room_goto(rm_endless);
		room_goto(rm_physics);
	}
	if gameMode=3 { //TRICK ATTACK
		room_goto(rm_endless);
		room_goto(rm_avalanchea_av);
	}
	if gameMode=4 { //TRICK ATTACK
		room_goto(rm_endless);
		room_goto(rm_avalanchea_av);
	}
	if gameMode=5 { //SOCCER  - SOLOMON 1 3
		if level==1 || level==3
		{
			room_goto(rm_avalanchea_av);
		} else {
			room_goto(rm_physics_soccer);
		}
	}
	if gameMode=6 { //SUMO -- Pinaball 1
		if level=1 {room_goto(rm_pinball);}
		room_goto(rm_physics_sumo);
	}
	if gameMode=7 { //SOLOMON
		room_goto(rm_avalanchea_av);
	}
	if gameMode=8 { //TEMPLE RUN -pinball5
		if level=5	{	room_goto(rm_pinball);		}
		if level=4	{	room_goto(rm_physics_ctf);	}
		room_goto(rm_avalanchea_av);
	}
	if gameMode=9 { //360, 
		if level=0 {
			room_goto(rm_endless_360);
		}
		if level=2 || level=5 {
			room_goto(rm_physics_ctf);
		}
	}
	if gameMode=10 { //PINBALL
		room_goto(rm_pinball);
	}
	if gameMode=11 { //CTF
		room_goto(rm_endless_ctf);
	}
	
	
		break;
	case 1:level+=1; break;
	case 2:	 gameMode+=1;
	case 3: vehicle+=1;
	case 4: exit; break;
}
}

if keyboard_check_pressed(vk_right)  || gamepad_button_check(0,gp_padr)
{
	wiggle=true;
switch(pos) {
	case 1:oldLevel=level; level+=1; break;
	case 2:	 gameMode+=1;
	case 3: vehicle+=1;
}
}
if keyboard_check_pressed(vk_left)  || gamepad_button_check(0,gp_padl)
{
	wiggle=true;
switch(pos) {
	case 1:oldLevel=level;  level-=1; break;
	case 2:	 gameMode-=1;
	case 3: vehicle-=1;
}
}



// Oscillate the cursor using sin function
cursorLevitate = dsin(cursorTime);

// Use this as an "angle" to use in the sin function
// to oscillate cursor
cursorTime += leviRate;


// Vertical input is determined by the press of up
// and down buttons
var vert =  keyboard_check_pressed(downButt) -  keyboard_check_pressed(upButt);

// Move cursor up or down depending on inputs
selected += vert;
selectLerp = lerp(selectLerp, selected, lerpAmt); // Smooth cursor movement

//TITLE
if wiggle=true {
wiggleOffset = sin(wiggleFrequency * current_time) * wiggleAmplitude;
wiggling-=1;
} else {
	wiggleOffset=0;
}
if wiggling<0 {wiggle=false;}


// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected
if menuScreen = 0
{
if(keyboard_check_pressed(confirmButt))
{
	if(selected == 0) // Play by default
	{
		menuScreen=1;
	}
	
	if(selected == 1) // Options by default
	{
		menuScreen=1;
	}
	
	if(selected == 2) // Stats by default
	{
		menuScreen=1;
	}
	
	if(selected == 3) // Exit by default
	{
		game_end();
	}
}
}



if menuScreen=1

{
	if keyboard_check(downButt)
	{
		level+=1;
	}
	if keyboard_check(upButt)
	{
		level-=1;
	}
	
	if level<0 then level=6;
	if level>6 then level=0;
}

//
// BG
//

mouse_posx2=room_width/2-mouse_x;
mouse_posy2=room_height/2-mouse_y;
mouse_posx=mouse_posx2/10;
mouse_posy=mouse_posy2/10;


//ocean animation title
if ocean_animation>15 then ocean_animation=0;
ocean_animation+=.2;









 // Apply vehicle selection logic
    if (level == 0) { // Snow level
		levelName="Blizzard";
        if (vehicle < 0) {
            vehicle = 2; // Snowboard, Snow Mobile, Skis
        }
        if (vehicle > 2) {
            vehicle = 0;
        }
		//
		if vehicle=0 {vehicleName="Snowboard";}
		if vehicle=1 {vehicleName="Ski";}
		if vehicle=2 {vehicleName="Snow Mobile";}
		//
		//
		if (gameMode < 0) { gameMode = 11;}
        if (gameMode > 11) {gameMode = 0;}
		if gameMode=0 {gameModeName="Avalanche";}
		///Timed: Cliff, Snow Villiage
		if gameMode=1 {gameModeName="Survival";}
		if gameMode=2 {gameModeName="Race";}
		if gameMode=3 {gameModeName="Trick Attack";}
		if gameMode=4 {gameModeName="Yeti Attack";}
		if gameMode=5 {gameModeName="Snowmobile Soccer";}
		if gameMode=6 {gameModeName="Sumo";}
		if gameMode=7 {gameModeName="Solomon";}
		if gameMode=8 {gameModeName="Temple Run";}
		if gameMode=9 {gameModeName="Snowglobe";}
		if gameMode=10 {gameModeName="Pinball";}
		if gameMode=11 {gameModeName="CTF";}
		if gameMode=12 {gameModeName="Pong";}
		
    }
	///////
    else if (level == 1) { // Desert level
		levelName="Desert";
        if (vehicle < 0) {
            vehicle = 1; // Sandboard, Bike
        }
        if (vehicle > 1) {
            vehicle = 0;
        }
		//
		if vehicle=0 {vehicleName="Sandboard";}
		if vehicle=1 {vehicleName="Bike";}
		//
		if (gameMode < 0) { gameMode = 6;}
        if (gameMode > 6) {gameMode = 0;}
		if gameMode=0 {gameModeName="Sandstorm";}
		if gameMode=1 {gameModeName="Survival";}
		if gameMode=2 {gameModeName="Race";}
		if gameMode=3 {gameModeName="Trick Attack";}
		if gameMode=4 {gameModeName="Bandits";}
		if gameMode=5 {gameModeName="Solomon";}
		if gameMode=6 {gameModeName="Pinball";}
		
    }
    else if (level == 2) { // Jungle level
		levelName="Jungle";
        if (vehicle < 0) {
            vehicle = 1; // Bike
        }
        if (vehicle > 1) {
            vehicle = 0;
        }
		//
		if vehicle=0 {vehicleName="Bike";}
		if vehicle=1 {vehicleName="ATV";}
		////
		if (gameMode < 0) { gameMode = 9;}
        if (gameMode > 9) {gameMode = 0;}
		if gameMode=0 {gameModeName="Mud Slide";}
		if gameMode=1 {gameModeName="Survival";}
		if gameMode=2 {gameModeName="Race";}
		if gameMode=3 {gameModeName="Trick Attack";}
		if gameMode=4 {gameModeName="Snake Attack";}
		if gameMode=5 {gameModeName="Soccer";}
		if gameMode=6 {gameModeName="Sumo";}
		if gameMode=7 {gameModeName="Solomon";}
		if gameMode=8 {gameModeName="Temple Run";}
		if gameMode=9 {gameModeName="CTF";}
    }
    else if (level == 3) { // Forest level
		levelName="Woodland";
        if (vehicle < 0) {
            vehicle = 0; // Bike
        }
        if (vehicle > 0) {
            vehicle = 0;
        }
		//
		if vehicle=0 {vehicleName="Bike";}
		////
		if (gameMode < 0) { gameMode = 6;}
        if (gameMode > 5) {gameMode = 0;}
		if gameMode=0 {gameModeName="Rock Slide";}
		if gameMode=1 {gameModeName="Survival";}
		if gameMode=2 {gameModeName="Race";}
		if gameMode=3 {gameModeName="Trick Attack";}
		if gameMode=4 {gameModeName="Bear Attack";}
		if gameMode=5 {gameModeName="Solomon";}
    }
    else if (level == 4) { // Water level
		levelName="Oceana";
        if (vehicle < 0) {
            vehicle = 2; // Surf, Jet Ski, Water Ski
        }
        if (vehicle > 2) {
            vehicle = 0;
        }
		
		if vehicle=0 {vehicleName="Surf";}
		if vehicle=1 {vehicleName="Jet Ski";}
		if vehicle=2 {vehicleName="Water Ski";}
		/////
		if (gameMode < 0) { gameMode = 8;}
        if (gameMode > 8) {gameMode = 0;}
		if gameMode=0 {gameModeName="Tsunami";}
		if gameMode=1 {gameModeName="Survival";}
		if gameMode=2 {gameModeName="Race";}
		if gameMode=3 {gameModeName="Trick Attack";}
		if gameMode=4 {gameModeName="Shark Attack";}
		if gameMode=5 {gameModeName="Volleyball";}
		if gameMode=6 {gameModeName="Sumo";}
		if gameMode=7 {gameModeName="Solomon";}
		if gameMode=8 {gameModeName="CTF";}
		
    }

    else if (level == 5) { // City level
		levelName="Metro";
        if (vehicle < 0) {
            vehicle = 3; // Skate, Scooter, Bike, Motorcycle
        }
        if (vehicle > 3) {
            vehicle = 0;
        }
		
		if vehicle=0 {vehicleName="Skate";}
		if vehicle=1 {vehicleName="Scooter";}
		if vehicle=2 {vehicleName="Bike";}
		if vehicle=3 {vehicleName="Motorcycle";}
		/////
		if (gameMode < 0) { gameMode = 9;}
        if (gameMode > 9) {gameMode = 0;}
		if gameMode=0 {gameModeName="Downhill Dip";}
		if gameMode=1 {gameModeName="Race";}
		if gameMode=2 {gameModeName="Survival";}
		if gameMode=3 {gameModeName="Trick Attack";}
		if gameMode=4 {gameModeName="Cops & Robbers";}
		if gameMode=5 {gameModeName="Streetball";}
		if gameMode=6 {gameModeName="Sumo";}
		if gameMode=7 {gameModeName="Solomon";}
		if gameMode=8 {gameModeName="Pinball";}
		if gameMode=9 {gameModeName="CTF";}
				
    }
	    else if (level == 6) { // Space level\
			levelName="Cosmos";
        if (vehicle < 0) {
            vehicle = 1; // Space Board, Space Mobile
        }
        if (vehicle > 1) {
            vehicle = 0;
        }
		
		if vehicle=0 {vehicleName="Space Board";}
		if vehicle=1 {vehicleName="Space Mobile";}
		////
		if (gameMode < 0) { gameMode = 9;}
        if (gameMode > 9) {gameMode = 0;}
		if gameMode=0 {gameModeName="Meteor Shower";}
		if gameMode=1 {gameModeName="Survival";}
		if gameMode=2 {gameModeName="Race";}
		if gameMode=3 {gameModeName="Trick Attack";}
		if gameMode=4 {gameModeName="Asteroids";}
		if gameMode=5 {gameModeName="Asteroidball";}
		if gameMode=6 {gameModeName="Sumo";}
		if gameMode=7 {gameModeName="Solomon";}
		if gameMode=8 {gameModeName="Invastion";} //dogfight
		if gameMode=9 {gameModeName="Wormhole";} //360

    }
    
// Create an instance TREE outside the specified range
/*instance_create(
    choose(
        random_range(0, room_width/3-100), 
        random_range(room_width/3+100, room_width)
    ),
    room_height + 20,
    obj_tree_menu
);
*/


/*
instance_create_layer(choose(
        random_range(0, room_width/3-100), 
        random_range(room_width/3+100, room_width)
    ),
    room_height + 20,
	"foreInstances",
    obj_tree_menu);
*/

spawn_object(obj_tree_menu,5);



if level=4 {
	if instance_number(o_fish) <10 {
		instance_create_layer(random(room_width), random(room_height), "fishLayer1", o_fish);
		instance_create_layer(random(room_width), random(room_height), "fishLayer2", o_fish);
		//instance_create(random(room_width),random(room_height),o_fish);
	}
}


//DEBUG
fishCount=instance_number(o_fish);
treeCount=instance_number(obj_tree_av);