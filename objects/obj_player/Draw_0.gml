draw_self();

dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);

draw_set_colour($FF0000FF & $ffffff);

xx = obj_player.x + lengthdir_x(1000, dir);

yy = obj_player.y + lengthdir_y(1000, dir);


//draw_line(obj_player.x, obj_player.y, xx, yy);

//draw_set_alpha(1);
r = array_create(3);
r = collision_line_point(x, y, xx, yy, all, true, true, r);

draw_line(obj_player.x, obj_player.y, r[1], r[2]);

//if (r[0] != noone) {
    // r[0] holds the nearest (hit) instance.
	if (r[0] == obj_mirror.id){
		degreeChange = 14.65*(dir);
		//degreeChange = (degreeChange);
		xxx =  r[1] + lengthdir_x(1000, degreeChange);
		yyy =  r[2] + lengthdir_y(1000, degreeChange);
		q = array_create(3);
		q = collision_line_point(r[1], r[2], xxx, yyy, all, true, true, q);
		//draw_line(r[1], r[2], q[1], q[2]);
		
		draw_line(r[1], r[2], r[1]+ 500*dcos(degreeChange), r[2]+500*dsin(degreeChange));
		
	}
//}