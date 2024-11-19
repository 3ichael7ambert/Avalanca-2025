/// generate_skin_tone()
///
/// Returns a random skin tone color.

function generate_skin_tone()
{
    var r, g, b;
    
    // Set the base color for the skin tone
    r = irandom_range(150, 255);  // red component
    g = irandom_range(100, 200);  // green component
    b = irandom_range(50, 100);   // blue component
    
    // Adjust the color to create a more realistic skin tone
    r = min(255, r + irandom_range(-30, 30));
    g = min(255, g + irandom_range(-20, 20));
    b = min(255, b + irandom_range(-10, 10));
    
    // Return the final color
    return make_colour_rgb(r, g, b);
}
