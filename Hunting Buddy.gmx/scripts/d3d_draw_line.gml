///d3d_draw_line(x1, y1, z1, x2, y2, z2, colour);

var x1 = argument[0];
var y1 = argument[1];
var z1 = argument[2];
var x2 = argument[3];
var y2 = argument[4];
var z2 = argument[5];
var col = argument[6];

d3d_primitive_begin(pr_linelist);
d3d_vertex_color(x1, y1, z1, col, draw_get_alpha());
d3d_vertex_color(x2, y2, z2, col, draw_get_alpha());
d3d_primitive_end();
