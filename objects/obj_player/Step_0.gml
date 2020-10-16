/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 183E8485
/// @DnDArgument : "color" "$FF0000D3"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF0000D3 & $ffffff);

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 2D959853
/// @DnDArgument : "x1" "obj_player.x"
/// @DnDArgument : "y1" "obj_player.y"
/// @DnDArgument : "x2" "mouse_x"
/// @DnDArgument : "y2" "mouse_y"
draw_line(obj_player.x, obj_player.y, mouse_x, mouse_y);