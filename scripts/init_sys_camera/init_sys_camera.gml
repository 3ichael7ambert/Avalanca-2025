// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

	/*	===================================== REFERENCE =========================================
		CLASS global.Camera:
			VARIABLES:
				target,id,x,y,w,h,xOff,yOff,shake,shakeMag,lerpRatio,borderless
			FUNCTIONS
				update()			- return NULL, updates the camera position
				reset()				- return NULL, gets the current rooms camera view size
				setShake(time,mag)	- return NULL, causes the camera to shake for time (seconds) with mag (pixel offset)
			
		===================================== NOTES ============================================
		Camera update() should be run in each room with a view that follows an object, 
		and reset() should be run at room start or display update

			
	*/
	
/// camera follow target
function init_sys_camera(){
	global.camera = {
		target: noone,
		id: 0,
		x: 0,
		y: 0,
		w: 320,
		h: 180,
		w_screen: 320,
		h_screen: 180,
		xOff: 0,
		yOff: 0,
		shake: 0,
		scale: 2,
		shakeMag: 32,
		lerpRatio: 0.1,
		borderless: false,
		timer: 0,
		update: function(){
			/// move camera to player position
			if(instance_exists(target)){
				var _xto = target.x-w*0.5;
				var _yto = target.y-h*0.5;
				/// if there are borders, restrict the camera
				if(!borderless){
					_xto = clamp(_xto,0,room_width-w);
					_yto = clamp(_yto,0,room_height-h);
				}
				var ratio = lerpRatio;
				if(timer++ < room_speed){
					ratio = 1;
				}
				x = lerp(x,_xto, ratio);
				y = lerp(y,_yto, ratio);
			}
			/// shake the camera
			if(shake > 0){
				xOff = random_range(-0.5,0.5)*shakeMag;
				yOff = random_range(-0.5,0.5)*shakeMag;
				shake--;
			} else {
				/// return from jittering to center
				xOff = 0;
				yOff = 0;
			}
			/// set view position
			var xcam = round((x+xOff)*scale) / scale;
			var ycam = round((y+yOff)*scale) / scale;
			camera_set_view_pos(view_camera[id],xcam,ycam);
		},
		reset: function(width=480, height=270, scaling=2, obj=noone){
			view_enabled = true;
			view_visible[0] = true;
			w = width;
			h = height;
			w_screen = w * scaling;
			h_screen = h * scaling;
			scale = scaling;
			target = obj;
			timer = 0;
		
			var cam = camera_create_view(0, 0, width, height);
		
			view_set_camera(id, cam);
			window_set_size(w_screen, h_screen);
			surface_resize(application_surface, w_screen, h_screen);
			display_set_gui_size(w_screen, h_screen);
		},
		setShake: function(time,mag){
			shake = time*room_speed;
			shakeMag = mag;
		},
		debug: function(){
			var _str = "-------------------------------------------"
			_str+="\ntarget: "+string(target)+"\nid: "+string(id)+"\nx: "+string(x)+"\ny: "+string(y);
			_str+="\nw: "+string(w)+"\nh: "+string(h)+"\nxOff: "+string(xOff)+"\nshake: "+string(shake);
			_str+="\nshakeMag: "+string(shakeMag)+"\n-------------------------------------------";
			return(_str);	
		}
	}
}

function cam_reset(width=480,height=270,scaling=2,obj=noone){
	global.camera.reset(width,height,scaling,obj);
}
function cam_shake(time, mag){
	global.camera.setShake(time, mag);
}
function cam_update(){
	global.camera.update();
}