
wall_thickness = 0.45;

width = 11.8 + wall_thickness*2;
height1 = 6.7 + wall_thickness*2;
height2 = 8.8 + wall_thickness*2;
depth = 6;
taper = 2;

clip_width = 6.3 + wall_thickness*2;
scale([1,1.25,1]) 
translate([0,(height2/2),0]) cylinder(r=(clip_width/2), h=depth, center=true, $fn=100);

translate([0,(height2-height1)/2,0]) cube([width,height1,depth],center=true);

thick_height = depth-taper;

translate([0,0,-taper/2]) cube([width,height2,thick_height],center=true);

taper_start_z = depth/2 - taper;
taper_depth = (height2 - height1)*2;
hull(){
    translate([0,-(height2-taper_depth)/2,taper_start_z])
    cube([width,0.1,0.1],center=true);
    translate([0,-((height2)/2)+0.05,taper_start_z])
    cube([width,0.1,0.1],center=true);
    translate([0,-(height2-taper_depth)/2,(depth/2)-0.05])
    cube([width,0.1,0.1],center=true);
}
