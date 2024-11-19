script_execute(p1_create_av,0,0,0,0,0);
//control
mousePressedDeviceIndex = -1;

//avalanche
alarm[0]=10;
x=room_width/2;
y=room_height/2;
image_speed=.3;

//jump
prep=false;

/*
//char
global.char1=round(random(13));
if global.char1=0 then sprite_index=sb_odonis;
if global.char1=1 then sprite_index=sb_odonis;
if global.char1=2 then sprite_index=s_ind;
if global.char1=3 then sprite_index=s_tew;
if global.char1=4 then sprite_index=s_ylw;
if global.char1=5 then sprite_index=s_psy;
if global.char1=6 then sprite_index=s_red;
if global.char1=7 then sprite_index=s_panda;
if global.char1=8 then sprite_index=s_jam;
if global.char1=9 then sprite_index=s_jetz;
if global.char1=10 then sprite_index=s_jetz4;
if global.char1=11 then sprite_index=s_daisey;
if global.char1=12 then sprite_index=s_sun;
if global.char1=13 then sprite_index=s_sun;
*/

hairStyle=choose(1,2, 3); //odonis, red, yellow
eyes=choose(1,2); //odonis, red
shirtStyle=choose(1,2,3); //shirtless, solid, striped
shoeStyle=choose(1,2,3); //
cHair=make_color_hsv(random(255),random(255),random(255)); // Hair Color
cGoggles= make_color_hsv(random(255),random(255),random(255)); 
cSkin= make_color_hsv(random(255),random(255),random(255)); 
cShirt1= make_color_hsv(random(255),random(255),random(255)); 
cShirt2= make_color_hsv(random(255),random(255),random(255)); 
cShoes1= make_color_hsv(random(255),random(255),random(255)); 
cShoes2= make_color_hsv(random(255),random(255),random(255)); 
cBoard1= make_color_hsv(random(255),random(255),random(255)); 
cBoard2= make_color_hsv(random(255),random(255),random(255)); 






///////////
///Snow -ski jet board
///Deset - board, bike
///jungle - bike
///forest - bike
///water -  surf jet ski
///space - board and mobile
///city - skate scooter bike motorcycle
///


// Initialize variables and set starting positions
if level == 0 { // Snow level
    if vehicle == 0 { // Snowboard
        // Initialize snowboard variables and set starting position
    }
    else if vehicle == 1 { // Snow Mobile
        // Initialize snow mobile variables and set starting position
    }
    else if vehicle == 2 { // Skis
        // Initialize skis variables and set starting position
    }
}
else if level == 1 { // Desert level
    if vehicle == 0 { // Sandboard
        // Initialize sandboard variables and set starting position
    }
    else if vehicle == 1 { // Bike
        // Initialize bike variables and set starting position
    }
	gravity=1;
}
else if level == 2 { // Jungle level
    if vehicle == 0 { // Bike
        // Initialize bike variables and set starting position
    }
}
else if level == 3 { // Forest level
    if vehicle == 0 { // Bike
        // Initialize bike variables and set starting position
    }
}
else if level == 4 { // Water level
    if vehicle == 0 { // Surf
        // Initialize surf variables and set starting position
    }
    else if vehicle == 1 { // Jet Ski
        // Initialize jet ski variables and set starting position
    }
    else if vehicle == 2 { // Water Ski
        // Initialize water ski variables and set starting position
    }
}
else if level == 5 { // Space level
    if vehicle == 0 { // Space Board
        // Initialize space board variables and set starting position
    }
    else if vehicle == 1 { // Space Mobile
        // Initialize space mobile variables and set starting position
    }
}
else if level == 6 { // City level
    if vehicle == 0 { // Skate
        // Initialize skate variables and set starting position
    }
    else if vehicle == 1 { // Scooter
        // Initialize scooter variables and set starting position
    }
    else if vehicle == 2 { // Bike
        // Initialize bike variables and set starting position
    }
    else if vehicle == 3 { // Motorcycle
        // Initialize motorcycle variables and set starting position
    }
}
