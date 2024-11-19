/// scr_generate_cloud(x, y, width, height, num_circles, circle_radius)

var cloud_x, cloud_y, cloud_width, cloud_height, num_circles, circle_radius;

cloud_x = argument0;
cloud_y = argument1;
cloud_width = argument2;
cloud_height = argument3;
num_circles = argument4;
circle_radius = argument5;

// Set the draw color to white for the clouds
draw_set_color(c_white);

// Draw random circles to simulate cloud shapes
for (var i = 0; i < num_circles; i++) {
    var circle_x = cloud_x + random(cloud_width);
    var circle_y = cloud_y + random(cloud_height);
    
    draw_cloud(circle_x, circle_y, circle_radius);
}

// Reset the draw color to the default
draw_set_color(c_white);
