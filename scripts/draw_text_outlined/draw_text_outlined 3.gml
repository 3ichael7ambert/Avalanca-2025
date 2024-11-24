//draw_text_outlined(x, y, outline color, string color, string)  
function draw_text_outlined(argument0,argument1,argument2,argument3,argument4)
{
var xx,yy,outline,words, colored;  
xx = argument0;  
yy = argument1;  
outline=argument4;
words=argument2;
colored=argument3;
  
//Outline  
draw_set_color(c_black);  
draw_text(xx+1, yy+1, argument2);  
draw_text(xx-1, yy-1, argument2);  
draw_text(xx,   yy+1, argument2);  
draw_text(xx+1,   yy, argument2);  
draw_text(xx,   yy-1, argument2);  
draw_text(xx-1,   yy, argument2);  
draw_text(xx-1, yy+1, argument2);  
draw_text(xx+1, yy-1, argument2);  
  
//Text  
draw_set_color(argument3);  
draw_text(xx, yy, argument2); 

}