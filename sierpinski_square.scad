module sierpinski_square(level, size){
    if (level == 0) {
        square(size);
    } else {
        new_size=size/3;
        new_level=level-1;
        for(i=[0:2]){
            for(j=[0:2]){
                if(i!=1 || j!=1){
                    translate([new_size*i,new_size*j,0]){
                        sierpinski_square(new_level, new_size);
                    }
                }
            }
        }
    }
}

level = 4;
size = 100;
sierpinski_square(level, size);