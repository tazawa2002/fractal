// Recursive function to create a Sierpinski triangle
module sierpinski(level, size) {
    if (level == 0) {
        triangle(size);
    } else {
        sierpinski(level - 1, size / 2);
        translate([size / 2, 0, 0])
            sierpinski(level - 1, size / 2);
        translate([size / 4, size * sqrt(3) / 4, 0])
            sierpinski(level - 1, size / 2);
    }
}

// Function to create a single triangle
module triangle(size) {
    polygon(points=[
        [0, 0],
        [size, 0],
        [size / 2, size * sqrt(3) / 2]
    ]);
}

// Parameters
level = 8; // Number of recursion levels
size = 100; // Size of the initial triangle

// Generate the Sierpinski triangle
sierpinski(level, size);
