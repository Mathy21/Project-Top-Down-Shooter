spd = 1;
wait = 0;
// Player Move
move = function()
{
	var button_w, button_a, button_s, button_d;
	button_w = keyboard_check(ord("W"));
	button_a = keyboard_check(ord("A"));
	button_s = keyboard_check(ord("S"));
	button_d = keyboard_check(ord("D"));

	var hspd = (button_d - button_a) * spd;
	x += hspd;
	var vspd = (button_s - button_w) * spd;
	y += vspd;
	if (button_w or button_a or button_s or button_d)
	{
		sprite_index = spr_moving_player;
	}
		else
		{
			sprite_index = spr_idle_player;
		}
}
look_direction = function()
{
	image_angle = point_direction(x, y, mouse_x, mouse_y) + 90;
}
fire = function()
{
	var ms_left;
	ms_left = mouse_check_button(mb_left);
	wait -= 1;
	if (wait <= 0)
	{
		if (ms_left)
		{
			instance_create_layer(x, y, "Bullets", obj_bullet_1);
			wait = 60;
		}
	}
		
}
	