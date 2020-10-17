/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6D719EF8
draw_self();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 776DA8A1
/// @DnDArgument : "expr" "point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)"
/// @DnDArgument : "var" "dir"
dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 03F0B3E1
/// @DnDArgument : "color" "$FFD1D1D1"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFD1D1D1 & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C362245
/// @DnDArgument : "expr" "obj_player.x + lengthdir_x(1000, dir)"
/// @DnDArgument : "var" "xx"
xx = obj_player.x + lengthdir_x(1000, dir);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5299745D
/// @DnDArgument : "expr" "obj_player.y + lengthdir_y(1000, dir)"
/// @DnDArgument : "var" "yy"
yy = obj_player.y + lengthdir_y(1000, dir);

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 7DEACBC8
/// @DnDArgument : "x1" "obj_player.x"
/// @DnDArgument : "y1" "obj_player.y"
/// @DnDArgument : "x2" "xx"
/// @DnDArgument : "y2" "yy"
draw_line(obj_player.x, obj_player.y, xx, yy);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 1A072025
draw_set_alpha(1);