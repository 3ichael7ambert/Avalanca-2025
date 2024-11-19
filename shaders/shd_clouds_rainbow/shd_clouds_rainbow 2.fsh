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

const vec3 fog_color = vec3(1.0, 1.0, 1.0);

// Cloud velocity
const vec2 dir_a = vec2(0.76604,0.64279);
const vec2 dir_b = vec2(0.58207,-0.48841);
const vec2 dir_c = vec2(0.54253,0.19747);
const vec2 dir_d = vec2(0.41224,-0.15004);
const vec2 dir_e = vec2(0.33333,0.00000);

vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
	// Cloud position
	float a = texture2D( gm_BaseTexture, (v_vTexcoord + dir_a * u_time) * 1.00000000).r;
    float b = texture2D( gm_BaseTexture, (v_vTexcoord + dir_b * u_time) * 0.75983568).r;
    float c = texture2D( gm_BaseTexture, (v_vTexcoord + dir_c * u_time) * 0.57735026).r;
    float d = texture2D( gm_BaseTexture, (v_vTexcoord + dir_d * u_time) * 0.43869133).r;
    float e = texture2D( gm_BaseTexture, (v_vTexcoord + dir_e * u_time) * 0.33333333).r;
 
    // changes how much each component affects the cloud density.
    e = pow(max(0.0,e),1.00000000); //affects most
    d = pow(max(0.0,d),0.75983568);
    c = pow(max(0.0,c),0.57735026);
    b = pow(max(0.0,b),0.43869133);
    a = pow(max(0.0,a),0.33333333); //affects least
 
    float cloud = a*b*c*d*e;
 
    // Make the cloud much thinner by multiplying by itself
    cloud = cloud * (3.0 - 2.0 * cloud); // this will determine the alpha value essentially
	
    float pos = (v_vTexcoord.x - u_uv[0]) / (u_uv[1] - u_uv[0]);
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    vec3 col = vec3(u_section * ((u_time * u_speed) + pos), u_saturation, u_brightness);
    vec3 finalCol = mix(texColor.xyz, hsv2rgb(col), u_mix);
	
	// This is kinda cool, makes blobs of color
	//vec3 finalCol = mix(texColor.xyz, hsv2rgb(col), u_mix * cloud);
    
	gl_FragColor = vec4(finalCol, cloud);
}
