
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 640;
view_hport[0] = 360;

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 320;
var _ypos = (_dheight / 2) - 180;
window_set_rectangle(_xpos, _ypos, 640, 360);

surface_resize(application_surface, 640, 360);