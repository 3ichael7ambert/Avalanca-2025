

if menuScreen=0
{
// Set default font
draw_set_font(fnt_monogram);

// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Draw the text
	draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu
var cursWidth = sprite_get_width(s_cursor);

// Draw cursor at where it should be, but half its width 
// to the left of the menu
//draw_sprite(s_cursor, -1, x + cursorLevitate - cursWidth/2, y + selectLerp*spacing);

// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
//draw_text_transformed(room_width*0.1, room_height*0.1 , gameTitle, titleSize, titleSize,0);
// Assuming you have an alpha variable in your object


draw_sprite_ext(sprAvalanca, 0, room_width / 4, room_height / 3.3 + wiggleOffset, 0.20, 0.20, 0+irandom_range(-wiggleOffset,wiggleOffset), c_white, init_alpha);

if buttonPressed = true {
    if init_alpha > 0 {
        init_alpha -= fadeSpeed; // Decrease alpha for fade out
    }
    if alpha < 1 {
        alpha += fadeSpeed; // Increase alpha for fade in
    }

    // Check if the wiggleTimer has reached zero
    if wiggleTimer <= 0 {
        // Randomly set a new timer value (adjust the range as needed)
        wiggleTimer = irandom_range(60, 300);
				wiggling=10;
				wiggle=true;
        
    
    } else {
        // Decrease the wiggleTimer
        wiggleTimer -= 1;
    }
	
	        draw_sprite_ext(
            sprLevelTitles, 
            level, 
            room_width / 4, 
            room_height / 3.3 + wiggleOffset, // Modify the y-coordinate with wiggle
            0.5, 
            0.5, 
            0+irandom_range(-wiggleOffset,wiggleOffset), 
            c_white, 
            alpha
        );
}


if level=4 {
	if round(ocean_animation)=1 {
		draw_sprite_ext(sprLevelTitles,9,room_width/4,room_height/3.3,.5,.5,0,c_white,1);
	}
	if round(ocean_animation)=2 {
		draw_sprite_ext(sprLevelTitles,10,room_width/4,room_height/3.3,.5,.5,0,c_white,1);
	}
	if round(ocean_animation)=3 {
		draw_sprite_ext(sprLevelTitles,11,room_width/4,room_height/3.3,.5,.5,0,c_white,1);
	}
	if round(ocean_animation)=4 {
		draw_sprite_ext(sprLevelTitles,10,room_width/4,room_height/3.3,.5,.5,0,c_white,1);
	}
	draw_sprite_ext(sprLevelTitles,8,room_width/4,room_height/3.3,.5,.5,0,c_white,1);
}


 if !level=0 {
	 draw_sprite_ext(sprLevelTitles,level,room_width/4,room_height/3.3,.51,.51,0,c_black,.2); //SHADOW
 }
}


/*
draw_set_color(c_black);
draw_text(10,10,"trees");
draw_text(10,40,treeCount);


draw_text(100,10,"fish");
draw_text(100,40,fishCount);
draw_text(200,10,instance_count);
*/