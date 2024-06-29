module sierpinski_cube(level, size){
    if (level == 0) {
        cube(size);
    } else {
        new_size=size/3;
        new_level=level-1;
        for(i=[0:2]){
            for(j=[0:2]){
                for(k=[0:2]){
                    if((i!=1||j!=1)&&(j!=1||k!=1)&&(k!=1||i!=1)){
                        translate([new_size*i,new_size*j,new_size*k]){
                            sierpinski_cube(new_level, new_size);
                        }
                    }
                }
            }
        }
    }
}

level = 1;
size = 100;
sierpinski_cube(level, size);