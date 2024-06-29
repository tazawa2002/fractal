// Recursive function to create a Sierpinski pyramid
module sierpinski_pyramid(level, size) {
    if (level == 0) {
        pyramid(size);
    } else {
        sierpinski_pyramid(level - 1, size / 2);
        translate([size / 2, 0, 0])
            sierpinski_pyramid(level - 1, size / 2);
        translate([size / 4, size * sqrt(3) / 4, 0])
            sierpinski_pyramid(level - 1, size / 2);
        translate([size / 4, size * sqrt(3) / 12, size * sqrt(2/3)/2])
            sierpinski_pyramid(level - 1, size / 2);
    }
}

// Function to create a single pyramid (tetrahedron)
module pyramid(size) {
    polyhedron(points=[
        [0, 0, 0],
        [size, 0, 0],
        [size / 2, size * sqrt(3) / 2, 0],
        [size / 2, size * sqrt(3) / 6, size * sqrt(2/3)]
    ],
    faces=[
        [0, 1, 2],
        [0, 1, 3],
        [1, 2, 3],
        [2, 0, 3]
    ]);
}

// Parameters
level = 6; // Number of recursion levels
size = 100; // Size of the initial pyramid

// Generate the Sierpinski pyramid
sierpinski_pyramid(level, size);