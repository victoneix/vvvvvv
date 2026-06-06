var _ui = font_add_sprite(spr_font_ui, ord(" "), 0, 0);

draw_set_color(c_gray);
draw_rectangle(0, 160, 256, 192, false);
draw_set_color(c_white);

draw_set_halign(2);
draw_set_valign(2);
draw_set_font(_ui);
draw_text_ext_transformed(cam_w, cam_h-30, "30:00", 0, 999, 1.8, 1.8, 0);
draw_text_ext_transformed(cam_w, cam_h-15, "000000000", 0, 999, 1.8, 1.8, 0);
draw_set_font(-1);
draw_set_halign(0);
draw_set_valign(0);