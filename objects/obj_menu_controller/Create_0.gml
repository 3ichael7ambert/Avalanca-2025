/// @description Delegates an settings for all elements

//Inits global arguments for moving an sclaling objects

global.sensitivity=0.5;                     //sensitivity of the spin
global.spin_dir=-1;                         //direction of the spin(-1 - towards, 1 - backwards)
global.rad_x=320;                           //radius of the width
global.rad_y=48;                            //radius of the height
global.place_x=(room_width/2);              //start x
global.place_y=room_height/2;               //start y
global.scaling=2.5;                         //object scaling factor
global.items=7;                             //no of items to create them
global._id=0;                               //sets counter in Creation

////////////////////////////
//Creation of elements      
for (i=0; i<global.items; i++)
{                           
    instance_create(0,0,obj_element);    
}                           
//                          
////////////////////////////




