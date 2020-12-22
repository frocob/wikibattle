//Get target view position and size. size is halved so the view will focus around its center
var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;
//The interpolation rate
var rate = 0.2;
//Interpolate the view position to the new, relative position.
var new_x = lerp(vpos_x, Obj_player.x - vpos_w, rate);
var new_y = lerp(vpos_y, Obj_player.y - vpos_h, rate);
//Update the view position
camera_set_view_pos(view_camera[0], new_x, new_y);