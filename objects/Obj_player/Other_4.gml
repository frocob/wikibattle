//camera create

//Enable the use of views
view_enabled = true;
//Make view 0 visible
view_set_visible(0, true);
//Set the port bounds of view 0 to 640x480
view_set_wport(0, 1280);
view_set_hport(0, 1280);

//Camera creation
//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(0, 0, 1280, 1280, 0, -1, -1, -1, 32, 32);

//Set view0 to use the camera "camera"
view_set_camera(0, camera);

//Basic set up
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], 1280, 1280);
//Setting up object target information
camera_set_view_target(camera,Obj_player);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], 32, 32);