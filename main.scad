include <connector.scad>

$fn=100;
r = 1.5;
d = 1 + (r*2);
h = 3;
play = 0.2;
d_play = 0;

w = 2;
l = r*2+d;


bar_width = 5;
bar_length = 30;
bar_height = 4;


module translated_connector_void_1() {
    translate([bar_width+d_play, bar_length/3,1])
        connector(void=true);
}

module translated_connector_void_2() {
    translate([bar_width+d_play, bar_length/3*2,1])
        connector(void=true);
}


module left_bar() {
    difference() {
        cube([bar_width,bar_length,bar_height]);
        translated_connector_void_1();
        translated_connector_void_2();
    }
}

module right_bar() {
    difference() {
        translate([bar_width+d_play*2,0,0])
            cube([bar_width,bar_length,bar_height]);
        translated_connector_void_1();
        translated_connector_void_2();
    }
}


left_bar();
translate([d_play*2,0,0])
right_bar();

%translate([bar_width+d_play, bar_length/3,1])
connector();

%translate([bar_width+d_play, bar_length/3*2,1])
connector();


translate([6,-5,0])
connector();


translate([6,-10,0])
connector();

color("red")
connector();
