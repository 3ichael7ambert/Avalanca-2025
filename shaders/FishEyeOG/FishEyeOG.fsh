//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float lensSize; //set by shader_set_uniform_f(shader_get_uniform(FishEye,"lensSize"),xx.x); 
uniform float apertureAngle; //set by shader_set_uniform_f(shader_get_uniform(FishEye,"apertureAngle"),xx.x); 

const float PI = 3.1415926535;

const float nudge = 0.15; //to make things a little more interesting

void main(void) {    
 #define PI 3.1415926535

// 0... Don't center fisheye when clicking/dragging with the mouse
// 1... Center fisheye when clicking/dragging with the mouse
#define CENTER 0

// 0... Show black pixels if uv coordinates are < 0 or >= 1
// 1... Loop image if uv coordinates are < 0 or >= 1
#define LOOP_IMAGE 0

vec2 norm(vec2 v)
{
    return 2.0 * v - 1.0;
}

vec2 abnorm(vec2 norm)
{
    return 0.5 * (norm + 1.0);
}

vec2 f1(vec2 uv)
{
    vec2 v = norm(uv);
    return v * exp(length(v)) / 4.0;
}

vec2 f2(vec2 uv)
{
    return -cos(uv * PI);
}

void mainImage(vec2 fragCoord, vec2 iResolution, vec3 iMouse, sampler2D iChannel0, out vec4 fragColor)
{
    vec2 factor = 1.0 / iResolution.xy;

    vec2 uv = fragCoord * factor;
    vec2 mouseNorm = -0.5 + iMouse.xy * factor;
    mouseNorm *= float(iMouse.z > 0.0);

#if !CENTER
    uv -= mouseNorm;
#endif

    vec2 transformed = abnorm(f1(uv)) + mouseNorm;

    // Output to screen
#if !LOOP_IMAGE
    if (all(greaterThanEqual(transformed, vec2(0))) && all(lessThan(transformed, vec2(1))))
        fragColor = texture2D(iChannel0, transformed);
    else
        fragColor = vec4(0);
#else
    fragColor = texture2D(iChannel0, transformed);
#endif
}

  }
}

