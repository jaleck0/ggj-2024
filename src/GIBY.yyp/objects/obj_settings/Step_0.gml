/// @description Insert description here
// You can write your code in this editor

global.LleftH	= sign(keyboard_check(ord("A")) + gamepad_button_check(0,gp_padl));
global.LrightH	= sign(keyboard_check(ord("D")) + gamepad_button_check(0,gp_padr));
global.LupH		= sign(keyboard_check(ord("W")) + gamepad_button_check(0,gp_padu));
global.LdownH	= sign(keyboard_check(ord("S")) + gamepad_button_check(0,gp_padd));

global.RleftH	= sign(keyboard_check(vk_left)	+ gamepad_button_check(0,gp_face3));
global.RrighttH = sign(keyboard_check(vk_right) + gamepad_button_check(0,gp_face2));
global.RupH		= sign(keyboard_check(vk_up)	+ gamepad_button_check(0,gp_face4));
global.RdownH	= sign(keyboard_check(vk_down)	+ gamepad_button_check(0,gp_face1));

global.LleftP	= sign(keyboard_check_pressed(ord("A")) + gamepad_button_check_pressed(0,gp_padl));
global.LrighttP	= sign(keyboard_check_pressed(ord("D")) + gamepad_button_check_pressed(0,gp_padr));
global.LupP		= sign(keyboard_check_pressed(ord("W")) + gamepad_button_check_pressed(0,gp_padu));
global.LdownP	= sign(keyboard_check_pressed(ord("S")) + gamepad_button_check_pressed(0,gp_padd));

global.RleftP	= sign(keyboard_check_pressed(vk_left)	 + gamepad_button_check_pressed(0,gp_face3));
global.RrighttP = sign(keyboard_check_pressed(vk_right)	 + gamepad_button_check_pressed(0,gp_face2));
global.RupP		= sign(keyboard_check_pressed(vk_up)	 + gamepad_button_check_pressed(0,gp_face4));
global.RdownP	= sign(keyboard_check_pressed(vk_down)	 + gamepad_button_check_pressed(0,gp_face1));

global.LleftR	= sign(keyboard_check_released(ord("A")) + gamepad_button_check_released(0,gp_padl));
global.LrighttR = sign(keyboard_check_released(ord("D")) + gamepad_button_check_released(0,gp_padr));
global.LupR		= sign(keyboard_check_released(ord("W")) + gamepad_button_check_released(0,gp_padu));
global.LdownR	= sign(keyboard_check_released(ord("S")) + gamepad_button_check_released(0,gp_padd));

global.RleftR	= sign(keyboard_check_released(vk_left)	 + gamepad_button_check_released(0,gp_face3));
global.RrighttR = sign(keyboard_check_released(vk_right) + gamepad_button_check_released(0,gp_face2));
global.RupR		= sign(keyboard_check_released(vk_up)	 + gamepad_button_check_released(0,gp_face4));
global.RdownR	= sign(keyboard_check_released(vk_down)	 + gamepad_button_check_released(0,gp_face1));


if keyboard_check_pressed(ord("R")) {
	game_restart();	
}

if keyboard_check_pressed(ord("P")) {
	global.done[0,0] = true
	global.done[0,1] = true

	global.done[1,0] = true
	global.done[1,1] = true

	global.done[2,0] = true
	global.done[2,1] = true
}

if keyboard_check_pressed(vk_f11)
{
	if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}
	
window_set_size(vwidth * vscale, vheight * vscale);
