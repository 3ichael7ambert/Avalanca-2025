/// @description Insert description here
// You can write your code in this editor


randomize();

application_surface_draw_enable(false);
deltaT = 0;
shader = 0;

surf=-1;
surf2=-1;
surf3=-1;

width360=objLevel.width360;
height360=objLevel.height360;
camera_set_view_size(view_camera[0], width360, height360);




/////STARS
x_follow = 0.9;
y_follow = 0.9;
x_speed = -0.2;
y_speed = 0;
colour = c_white;
alpha = 1;

previous_xview = __view_get( e__VW.XView, 0 );
previous_yview = __view_get( e__VW.YView, 0 );
x1=x;
y1=y;
x2=x;
y2=y;
x3=x;
y3=y;
x4=x;
y4=y;
x5=x;
y5=y;



///SNOW
_ps = part_system_create();
part_system_draw_order(_ps, true);

_ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_pixel);
part_type_size(_ptype1, 0.25, 0.5, 0, 0);
part_type_scale(_ptype1, 0.25, 0.25);
part_type_speed(_ptype1, 1, 1, 2, 1);
part_type_direction(_ptype1, 288, 298, 0, 1);
part_type_gravity(_ptype1, 0.1, 88);
part_type_orientation(_ptype1, 100, 100, 0, 0, false);
part_type_colour3(_ptype1, $FFFFFF, $FFE799, $FFFFFF);
part_type_alpha3(_ptype1, 1, 0.98, 0.031);
part_type_blend(_ptype1, true);
part_type_life(_ptype1, 40, 40);

_pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -960, 960, -540, 540, ps_shape_rectangle, ps_distr_invgaussian);
part_emitter_stream(_ps, _pemit1, _ptype1, 2);

part_system_position(_ps, room_width/2, room_height/2);

// Assign particle properties to the system
part_system_automatic_draw(_ps, false);