///PlayerInitCamera();

cameraX = x;
cameraY = y;
cameraZ = 0;
cameraZFrom = 0;
cameraXLast = cameraX;
cameraYLast = cameraY;
cameraHeight = 64;
cameraYaw = 0;
cameraPitch = 5;
cameraSpeedTurn = 8;
cameraSpeedMove = 7.5;
cameraSpeedAccelerate = 0.5;
cameraVelocityX = 0;
cameraVelocityY = 0;
cameraAddTween = 0;

gunYAdd = 512;

if g.gameHTML
    display_set_gui_size(room_width, room_height);

d3d_start();
draw_set_colour(c_white);
