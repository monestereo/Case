module box(box_x, box_y, boy_z, slope_angle = 0) {
	alpha = 90 - slope_angle;
	z_plus_angle = box_z + (box_y/tan(alpha));
	union() {
		difference() {
			difference() {
				roundCornersCube(box_x+2*wall_th, box_y+2*wall_th, z_plus_angle+2*wall_th, corner_r);
				translate([0,0,wall_th]) roundCornersCube(box_x, box_y, z_plus_angle+5, 7);
			}
			rotate([-slope_angle, 0, 0])
				translate([-box_x/2-2*wall_th, -box_y/2-2*wall_th, box_z/2-2*wall_th])
					cube([box_x+4*wall_th, box_y+4*wall_th, box_z+4*wall_th]);
		}
		
		cylinder(h=box_z, r= 20)	
	}
	
}