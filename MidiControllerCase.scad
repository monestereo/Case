box_x=325;
box_y=200;
box_z=50;
corner_r=10;
wall_th=3;
slope_angle=0;


include <roundCornersCube.scad>
include <PadMount.scad>
include <ButtonCap.scad>
include <Box.scad>


translate([-400, 0, 0]) buttoncap();
translate([-450, 0, 0]) buttoncap(15,15, 7, 7, false);
translate([0, -300, 0]) pad_mount();
box(box_x, box_y, boy_y, slope_angle);
