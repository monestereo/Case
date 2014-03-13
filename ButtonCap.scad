module buttoncap(width=12.3, depth=9, height=7, tact_size=7, gripper=true) {
	difference() {
		union() {
			cube([width, depth, height], true);
			translate([width/2+1,-depth/2+1,-2.5]) cube([2, 2, 2], true);
			translate([width/2+1,depth/2-1,-2.5]) cube([2, 2, 2], true);
			translate([-width/2-1,-depth/2+1,-2.5]) cube([2, 2, 2], true);
			translate([-width/2-1,depth/2-1,-2.5]) cube([2, 2, 2], true);
			if (gripper == true) {
				translate([0,0,3]) rotate([0,90,0]) cylinder(r=2, h=10, center=true);			
			}
		}
		union() {
			translate([0,0,-3]) cube([tact_size,tact_size,2], true);
		}
	}
}
