/// @description Insert description here
// You can write your code in this editor


draw_set_font(fn_score);
draw_text_outlined(10, 10, "Score: ",c_yellow, c_blue);
draw_text_outlined(170, 10, score_,c_yellow, c_blue);
draw_text_outlined(10, 50, "Health: ",c_yellow, c_blue);
draw_text_outlined(170, 50, sb_p1_av.hp,c_yellow, c_blue);


///
if sb_p1_av.alive == false && restart_menu == false {
    draw_text_outlined(512, 364, "Game Over", c_white, c_black);
	res_time+=.1;
}

if restart_menu == true {
    draw_text_outlined(512, 300, "Continue?", c_white, c_black);
    if res_menu_select == 1 {
        draw_text_outlined(480, 364, "Yes", c_black, c_yellow);
        draw_text_outlined(550, 364, "No", c_black, c_white);
        draw_text(512, 364, "Yes");
    }
    if res_menu_select == 0 {
        draw_text_outlined(480, 364, "Yes", c_black, c_white);
        draw_text_outlined(550, 364, "No", c_black, c_yellow);
    }

}

