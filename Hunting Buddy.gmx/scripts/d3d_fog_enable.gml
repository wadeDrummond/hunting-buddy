///d3d_fog_enable(bool)
//made this because I hate that I have to set the fog vars every time I disable/enable it somewhere
if (argument0){
    d3d_set_fog(true,g.fogColour,g.fogDistanceStart,g.fogDistanceEnd);
    } else {
    d3d_set_fog(false,c_white,0,100);
    }
