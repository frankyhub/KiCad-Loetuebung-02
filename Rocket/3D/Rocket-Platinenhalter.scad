//Platinenhalter 31.07.2021


//******* Parameter ********************
n="Rocket"; //Name
x=-11.5;      //Text-Position +>rechts
y=1.6;      //Platinen-Dicke
//**************************************





//*******Programm **********************

include <lib/std.scad>
difference(){
cuboid(
    [70,25,10], rounding=5,
    edges=[
    TOP+FRONT,
    TOP+BACK,
    TOP+LEFT,
    TOP+RIGHT,
    FRONT+RIGHT,
    FRONT+LEFT, 
    BACK+LEFT,
    BACK+RIGHT    
    ],
    $fn=60
);

translate([0,4,3]) 
cube(size = [48,y,13],center = true);

}
color("SlateGray")
translate([x, -7.5,4.5])
linear_extrude(2)
text(n,  font = "Arial", size = 6);

