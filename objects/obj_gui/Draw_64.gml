var _gui = font_add_sprite(spr_font_gui, ord(" "), 0, 0);

draw_set_color(c_gray);
draw_rectangle(0, 160, 160, 192, 0);
draw_set_color(c_white);

draw_set_font(_gui);
draw_set_halign(2);
draw_set_valign(2);

global.timer = "";
if(global.t_min > 9){global.timer += ""+string(global.t_min)}
if(global.t_min < 10){global.timer += "0"+string(global.t_min)}
global.timer += ":"
if(global.t_sec > 9){global.timer += ""+string(global.t_sec)}
if(global.t_sec < 10){global.timer += "0"+string(global.t_sec)}

draw_text_ext_transformed(gui_w, gui_h-30, global.timer, 0, 222, 1, 1.8, 0);
draw_text_ext_transformed(gui_w, gui_h-14, "0000000", 0, 222, 1, 1.8, 0);

draw_set_halign(0);
draw_set_valign(0);
draw_set_font(-1);