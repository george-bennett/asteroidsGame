/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_text);
draw_set_color(c_white);

var m;
for(m = 0; m < array_length_1d(menu); m += 1)
{
	//draw menu options with spacing between for as long as there are array elements
draw_text(x + space , y + (m * space), string(menu[m]))

}
draw_sprite(sprite_index, 0 , x - 16, y + menuPosition * space);