r = 5.2;
thickness = 1.1;
s = 0.5;
beam_thickness = 0.75;
wood = 0.32;
angle = 30;
angle2 = -30;
inner_r = 0.35;
real_thickness = 1;
l = 2;
h = 0.95;



//real thickness of wooden block in mm

scale([5 * real_thickness,5 * real_thickness,0]){
//code for wheel 1
difference(){
	union(){
		difference(){
			circle(r, $fn=20);
			circle(r-thickness,$fn=20);
		}
		polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(45)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(-45)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(90)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(-45)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);
	}
	circle(inner_r, $fn = 20);

	translate([4.5,0])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([-4.5,0])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([0,4.5])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([0,-4.5])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([(r - thickness + s/1.25 )/sqrt(2),(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([-(r - thickness + s/1.25 )/sqrt(2),-(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

translate([(r - thickness + s/1.25 )/sqrt(2),-(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

translate([-(r - thickness + s/1.25 )/sqrt(2),(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);
}
}
//code to generate second circle
scale([5 * real_thickness,5 * real_thickness,0]){
translate([2*r + 1,0,0])
difference(){
	union(){
		difference(){
			circle(r, $fn=20);
			circle(r-thickness,$fn=20);
		}
		polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(45)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(-45)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(90)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);

		rotate(-45)
			polygon(points=[[-4.5,-beam_thickness/2],[-4.5,beam_thickness/2],[4.5,beam_thickness/2],[4.5,-beam_thickness/2]], paths=[[0,1,2,3]]);
	}
	circle(inner_r, $fn = 20);

	translate([4.5,0])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([-4.5,0])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([0,4.5])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([0,-4.5])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([(r - thickness + s/1.25 )/sqrt(2),(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

	translate([-(r - thickness + s/1.25 )/sqrt(2),-(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

translate([(r - thickness + s/1.25 )/sqrt(2),-(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);

translate([-(r - thickness + s/1.25 )/sqrt(2),(r - thickness + s/1.25)/sqrt(2),0 ])
		rotate(angle2)
			polygon(points=[[-wood/2,-0.25],[wood/2,-0.25],[wood/2,0.25],[-wood/2,0.25]], paths=[[0,1,2,3]]);
}
}


//code for wheel slats
scale([5 * real_thickness,5 * real_thickness,0]){

translate([-8,0,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}

translate([-8,2,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}

translate([-8,4,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}

translate([-8,-2,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}


translate([-11.5,0,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}

translate([-11.5,2,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}

translate([-11.5,4,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}

translate([-11.5,-2,0])
union(){
	polygon(points=[[-l/2,0],[l/2,0],[l/2,h],[-l/2,h]],paths=[[0,1,2,3]]);
	translate([0,h/4,0])
	polygon(points=[[-l/2 - wood,0],[l/2 + wood,0],[l/2 + wood,h/2],[-l/2 - wood,h/2]],paths=[[0,1,2,3]]);
}
}
