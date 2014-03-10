box_x=325;
box_y=200;
box_z=50;
corner_r=10;
wall_th=3;
slope_angle=3;


include <roundCornersCube.scad>

module box() {
	alpha = 90 - slope_angle;
	z_plus_angle = box_z + (box_y/tan(alpha));
	difference() {
		difference() {
			roundCornersCube(box_x+2*wall_th, box_y+2*wall_th, z_plus_angle+2*wall_th, corner_r);
			translate([0,0,wall_th]) roundCornersCube(box_x, box_y, z_plus_angle+5, 7);
		}
		rotate([-slope_angle, 0, 0])
			translate([-box_x/2-2*wall_th, -box_y/2-2*wall_th, box_z/2-2*wall_th])
				cube([box_x+4*wall_th, box_y+4*wall_th, box_z+4*wall_th]);
	}
}

module pad_mount() {
	m_x = 185;
	m_y = 188;
	hole_d = 5;
	padding = 5;
	rotate([-slope_angle, 0, 0]) {
		union() {
			cube([m_x, m_y, wall_th], true);
			
			// bottom left
			translate([(m_x/2)-padding,(m_y/2)-padding,0])
					cylinder(h=10, d=hole_d, center=true);

			// top left
			translate([(m_x/2)-padding, -(m_y/2)+padding,0])
					cylinder(h=10, d=hole_d, center=true);

			// bottom right
			translate([-(m_x/2)+padding,(m_y/2)-padding,0])
					cylinder(h=10, d=hole_d, center=true);
			
			// rop right
			translate([-(m_x/2)+padding,-(m_y/2)+padding,0])
					cylinder(h=10, d=hole_d, center=true);
		}
	}
}

pad_mount();
box();
