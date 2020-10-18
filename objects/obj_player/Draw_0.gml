draw_self();

dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);

draw_set_colour($FF0000FF & $ffffff);

xx = obj_player.x + lengthdir_x(500, dir);

yy = obj_player.y + lengthdir_y(500, dir);

//draw_line(obj_player.x, obj_player.y, xx, yy);

//draw_set_alpha(1);
r = array_create(3);
r = collision_line_point(x, y, xx, yy, obj_wall, true, true, r);
draw_line(obj_player.x, obj_player.y, r[1], r[2]);
if (r[0] != noone) {
    // r[0] holds the nearest (hit) instance.
	
}