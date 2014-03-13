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
