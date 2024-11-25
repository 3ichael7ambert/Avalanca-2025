// Collision event with tree object

/*
if (place_meeting(x, y, obj_tree)) {
    // Calculate the collision angle between the player and the tree
    var collisionAngle = point_direction(x, y, obj_tree.x, obj_tree.y);

    // Calculate the angle difference between the player's direction and the collision angle
    var angleDifference = collisionAngle - direction;

    // Reverse the momentum to simulate bouncing effect
    momentum = -momentum;

    // Adjust speed based on the angle difference
    if (abs(angleDifference) < 90) {
        // Reduce speed if the collision angle is in front of the player
        speed *= 0.5; // Adjust the speed reduction factor as needed
    } else {
        // Increase speed if the collision angle is behind the player
        speed *= 1.5; // Adjust the speed increase factor as needed
    }

    // Calculate the distance to move away from the collision point
    var distance = max(abs(obj_tree.x - x), abs(obj_tree.y - y)) + 1;

    // Calculate the new position away from the collision point
    var newX = x + lengthdir_x(distance, collisionAngle + 180);
    var newY = y + lengthdir_y(distance, collisionAngle + 180);

    // Check if the new position is not colliding with other objects
    if (!place_meeting(newX, newY, obj_tree)) {
        // Move the player to the new position
        x = newX;
        y = newY;
    }
}
*/


//expel_on_collision();
