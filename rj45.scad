
%translate([0,(8.4/2),0]) cylinder(r=(6.3/2), h=6, center=true, $fn=100);
%difference(){
    cube([11.7, 8.4, 6],center=true);
    
    translate([0,-8.4/2,2])
    rotate([0,90,0])
    cylinder(r=1.5, h=11.7, center=true, $fn=100);
}

    translate([0,-6.92/2,2.0])
    cube([11.7, 1.5, 2],center=true);
    translate([0,-4.15,1.1])
    rotate([40, 0, 0])
    cube([11.7, 2, 2],center=true);