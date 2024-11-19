/// @description Insert description here
// You can write your code in this editor
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









///Snow -ski jet board
///Deset - board, bike
///jungle - bike
///forest - bike
///water -  surf jet ski
///space - board and mobile
///city - skate scooter bike motorcycle
///



if level == 0 and vehicle == 0 and game_mode == 0 {
snow_snowboard_survival_draw();
}
else if level == 0 and vehicle == 1 and game_mode == 0 {
snow_snowmobile_draw();
}
else if level == 0 and vehicle == 2 and game_mode == 0 {
snow_ski_draw();
}
else if level == 1 and vehicle == 0 and game_mode == 0 {
desert_sandboard_draw();
}
else if level == 1 and vehicle == 1 and game_mode == 0 {
desert_bike_draw();
}
else if level == 2 and vehicle == 0 and game_mode == 0 {
jungle_bike_draw();
}
else if level == 3 and vehicle == 0 and game_mode == 0 {
forest_bike_draw();
}
else if level == 4 and vehicle == 0 and game_mode == 0 {
water_surf_draw();
}
else if level == 4 and vehicle == 1 and game_mode == 0 {
water_jet_ski_draw();
}
else if level == 4 and vehicle == 2 and game_mode == 0 {
water_water_ski_draw();
}
else if level == 5 and vehicle == 0 and game_mode == 0 {
space_spaceboard_draw();
}
else if level == 5 and vehicle == 1 and game_mode == 0 {
space_spacemobile_draw();
}
else if level == 6 and vehicle == 0 and game_mode == 0 {
city_skate_draw();
}
else if level == 6 and vehicle == 0 and game_mode == 0 {
city_scooter_draw();
}