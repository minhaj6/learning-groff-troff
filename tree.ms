.\" Drawing Christmas Tree with PS macro
.\" to compile into pdf run
.\" groff -p -ms -Tpdf tree.ms > tree.pdf

.TL
Drawing Christmas Tree the Unix Way
.AU
Minhaj Shovon
.SH
.LP

.PS
branches = 5

define ball {
	circle rad 0.1 at last spline.start fill color "red"
}
define treecolor % color "green" %

for i = 0 to branches do {
	spline left 0.1 then up right treecolor thick 2
	if i !=0 then {
		ball
	}
	move to last spline.end
}

TOPOFTREE: ""

for i = 0 to branches do {
	spline down right then left 0.1 treecolor thick 2
	if i !=0 then {
		ball
	}
	move to last spline.end
}

centerX = TOPOFTREE.c.x
bottomY = last spline.end.y

box with .n at (centerX,bottomY) color "maroon" fill
line from last spline.end to last box.ne treecolor thick 1
line from last box.nw to 1st spline.start treecolor thick 1
move down 2

define star {
	"\M[blue]\D'P -2 -2 2 0 -2 2 1 -3'"
}
move to TOPOFTREE + (0.07, -2)
star
move up 2
star
move down 1
star

.PE
