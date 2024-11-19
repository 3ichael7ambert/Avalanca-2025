varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const vec3 cloudcolor = vec3(0.5, 0.57, 1.0);
const vec3 skycolor = vec3(0.96, 0.52, 0.54); // if sky is not transparent, will draw with this color

uniform vec2 u_resolution;
uniform float u_pixel_amount; // Pixel amount (lower number means less pixels and bigger pixels)
uniform float u_time;

#define TAU 6.2831853071

// Determines height of clouds
float height(float px) {
	return 0.55 * (0.5 * sin(0.1*px) + 0.5 * sin(0.553 * px) + 0.9 * sin(1.2 * px));
}

// Determines radius of circles
float radius(float px) {
	return 0.5 + 0.25 * (1.0 + sin(mod(40.0 * px, TAU)));
}

// Cloud layer calculations
float layer(vec2 pQ, float pt) {
	vec2 qt = 3.5*pQ;
	pt *= 0.5;
	qt.x += pt;

	float xi = floor(qt.x);
	float xf = qt.x - xi - 0.5;

	vec2 c;
	float yi;
	float d = 1.0 - step(qt.y,  height(qt.x));

	// Sphere
	yi = height(xi + 0.5);
	c = vec2(xf, qt.y - yi ); 
	d =  min(d, length(c) - radius(xi+ pt/80.0));

	// Previous sphere
	yi = height(xi+1.0 + 0.5);
	c = vec2(xf-1.0, qt.y - yi ); 
	d =  min(d, length(c) - radius(xi+1.0+ pt/80.0));

	// Next sphere
	yi = height(xi-1.0 + 0.5);
	c = vec2(xf+1.0, qt.y - yi ); 
	d =  min(d, length(c) - radius(xi-1.0+ pt/80.0));

	return min(1.0, d);
}

void main() {
	
	// Setup and pixelate
	float dx = (1.0 / u_pixel_amount);
    float dy = (1.0 / u_pixel_amount);
	vec2 uv = 1.5 * (v_vTexcoord.xy - u_resolution.xy / 1.5) / min(u_resolution.x, -u_resolution.y);	
	uv = vec2(dx * floor(uv.x / dx), dy * floor(uv.y / dy));
	
	// Cloud layer handling
	vec3 col = skycolor;
	for(float i = 0.0; i <= 1.0; i += 0.2) {
		
		// Cloud layer
		float lt = u_time * (0.5  + 2.0 * i) * (1.0 + 0.1 * sin(226.0 * i)) + 17.0 * i;
		vec2 lp = vec2(0.0, 0.3 + 1.5 * (i - 0.5));
		float l = layer(uv + lp, lt);

		// Find final color
		float v = mix(0.0, 1.0, 1.0 - smoothstep(0.0, 0.0, l));
		vec3 lc = mix(cloudcolor, vec3(1.0), i);
		col = mix(col, lc,  v);
	}

	gl_FragColor = vec4(col, 0.8);
	
	// Remove the following lines if you don't want a transparent sky
	if(gl_FragColor.r == skycolor.r) {
		discard;
	}
}