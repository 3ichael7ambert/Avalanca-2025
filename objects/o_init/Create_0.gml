/// @description Insert description here
// You can write your code in this editor

globalvar level, ship,vehicle,game_mode;
level=0;
ship=0;
vehicle=0;
game_mode=0;



//-------------------------//
// STEAM

global.steam_api = false;
if steam_initialised()
{
    if steam_stats_ready() && steam_is_overlay_enabled()
    {
        global.steam_api = true;
    }
}


//-------------------------//

room_goto_next();





