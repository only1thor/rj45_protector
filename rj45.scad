
wall_thickness = 0.4;

width = 11.7 + wall_thickness*2;
height1 = 6.7 + wall_thickness*2;
height2 = 8.8 + wall_thickness*2;
depth = 8;

clip_width = 6.3 + wall_thickness*2;

translate([0,(height2/2),0]) cylinder(r=(clip_width/2), h=depth, center=true, $fn=100);

translate([0,(height2-height1)/2,0]) cube([width,height1,depth],center=true);

taper = 2;
thick_height = depth-taper;

translate([0,0,-taper/2]) cube([width,height2,thick_height],center=true);

taper_start_z = depth/2 - taper;
taper_depth = (height2 - height1)*2;
polyhedron(
    points=[
        [-width/2,-(height2-taper_depth)/2,taper_start_z],
        [-width/2,-(height2)/2,taper_start_z],
        [width/2,-(height2)/2,taper_start_z],
        [width/2,-(height2-taper_depth)/2,taper_start_z],
        [width/2,-(height2-taper_depth)/2,depth/2],
        [-width/2,-(height2-taper_depth)/2,depth/2],
        ],
    faces=[
        [0,1,2,3],
        [0,3,4,5],
        [1,2,4,5],
        [0,1,5],
        [2,3,4],
        ]
    );