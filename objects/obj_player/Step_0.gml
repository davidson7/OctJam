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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2EC20E25
/// @DnDArgument : "expr" "keyboard_check(vk_left)"
/// @DnDArgument : "var" "key_left"
key_left = keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3300E450
/// @DnDArgument : "expr" "keyboard_check(vk_right)"
/// @DnDArgument : "var" "key_right"
key_right = keyboard_check(vk_right);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 341E9368
/// @DnDArgument : "expr" "keyboard_check_pressed(vk_space)"
/// @DnDArgument : "var" "key_jump"
key_jump = keyboard_check_pressed(vk_space);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B3BC955
/// @DnDArgument : "var" "move"
/// @DnDArgument : "value" "key_right-key_left"
var move = key_right-key_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E3C733F
/// @DnDArgument : "expr" "move*walkspeed"
/// @DnDArgument : "var" "hsp"
hsp = move*walkspeed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18D45FAF
/// @DnDArgument : "expr" "vsp + grv"
/// @DnDArgument : "var" "vsp"
vsp = vsp + grv;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0FDAEF30
/// @DnDArgument : "expr" "place_meeting(x, y+1, obj_wall)"
if(place_meeting(x, y+1, obj_wall))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 022DF8B0
	/// @DnDParent : 0FDAEF30
	/// @DnDArgument : "expr" "key_jump"
	if(key_jump)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7043E16D
		/// @DnDParent : 022DF8B0
		/// @DnDArgument : "expr" "-16"
		/// @DnDArgument : "var" "vsp"
		vsp = -16;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 23E27F13
/// @DnDArgument : "expr" "place_meeting(x+hsp, y, obj_wall)"
if(place_meeting(x+hsp, y, obj_wall))
{
	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 0DCBD09C
	/// @DnDParent : 23E27F13
	/// @DnDArgument : "var" "place_meeting(x+sign(hsp), y, obj_wall)"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	while (!(place_meeting(x+sign(hsp), y, obj_wall) == true)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F932F71
		/// @DnDParent : 0DCBD09C
		/// @DnDArgument : "expr" "x+sign(hsp)"
		/// @DnDArgument : "var" "x"
		x = x+sign(hsp);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66505149
	/// @DnDParent : 23E27F13
	/// @DnDArgument : "var" "hsp"
	hsp = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5583F98D
/// @DnDArgument : "expr" "x+hsp"
/// @DnDArgument : "var" "x"
x = x+hsp;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 44DECF63
/// @DnDArgument : "expr" "place_meeting(x, y+vsp, obj_wall)"
if(place_meeting(x, y+vsp, obj_wall))
{
	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 4340CE59
	/// @DnDParent : 44DECF63
	/// @DnDArgument : "var" "place_meeting(x, y+sign(vsp), obj_wall)"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	while (!(place_meeting(x, y+sign(vsp), obj_wall) == true)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F3FE20D
		/// @DnDParent : 4340CE59
		/// @DnDArgument : "expr" "y + sign(vsp)"
		/// @DnDArgument : "var" "y"
		y = y + sign(vsp);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21B7F9E6
	/// @DnDParent : 44DECF63
	/// @DnDArgument : "var" "vsp"
	vsp = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 795B7766
/// @DnDArgument : "expr" "y+vsp"
/// @DnDArgument : "var" "y"
y = y+vsp;