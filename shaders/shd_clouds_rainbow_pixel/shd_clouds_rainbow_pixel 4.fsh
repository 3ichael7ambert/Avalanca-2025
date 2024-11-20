//
// Rainbow Shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// Rainbow
uniform vec2 u_uv;
uniform float u_speed;
uniform float u_time;
uniform float u_saturation;
uniform float u_brightness;
uniform float u_section;
uniform float u_mix;

// Pixelation
uniform vec2 u_resolution;
uniform float u_pixel_amount;

// Cloud velocity
const vec2 dir_a = vec2(0.76604, 0.64279);
const vec2 dir_b = vec2(0.58207, -0.48841);
const vec2 dir_c = vec2(0.54253, 0.19747);
const vec2 dir_d = vec2(0.41224, -0.15004);
const vec2 dir_e = vec2(0.33333, 0.00000);

vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main() {
	// Pixelation
	vec2 res = vec2(1.0, u_resolution.x / u_resolution.y);
    vec2 size = vec2(res.x / u_pixel_amount, res.y / u_pixel_amount);
    vec2 uv = v_vTexcoord - mod(v_vTexcoord, size);
	
	// Cloud positions
	float ca = texture2D(gm_BaseTexture, (uv + dir_a * u_time) * 1.00000000).r;
    float cb = texture2D(gm_BaseTexture, (uv + dir_b * u_time) * 0.75983568).r;
    float cc = texture2D(gm_BaseTexture, (uv + dir_c * u_time) * 0.57735026).r;
    float cd = texture2D(gm_BaseTexture, (uv + dir_d * u_time) * 0.43869133).r;
    float ce = texture2D(gm_BaseTexture, (uv + dir_e * u_time) * 0.33333333).r;
 
    // Changes how much each component affects the cloud density
    ce = pow(max(0.0, ce), 1.00000000); // affects most
    cd = pow(max(0.0, cd), 0.75983568);
    cc = pow(max(0.0, cc), 0.57735026);
    cb = pow(max(0.0, cb), 0.43869133);
    ca = pow(max(0.0, ca), 0.33333333); // affects least
 
    float cloud_dnsty = ca * cb * cc * cd * ce;
 
    // Make the clouds thinner by multiplying by itself
    cloud_dnsty = cloud_dnsty * (3.0 - 2.0 * cloud_dnsty); // this will determine the alpha value essentially
	
    float pos = (uv.x - u_uv[0]) / (u_uv[1] - u_uv[0]);
    vec4 texColor = texture2D(gm_BaseTexture, uv);
    
    vec3 col = vec3(u_section * ((u_time * u_speed) + pos), u_saturation, u_brightness);
    vec3 finalCol = mix(texColor.xyz, hsv2rgb(col), u_mix);
	
	// This is a kinda cool alternative, makes blobs of color
	//vec3 finalCol = mix(texColor.xyz, hsv2rgb(col), u_mix * cloud_dnsty);
    
	gl_FragColor = vec4(finalCol, cloud_dnsty);
}
