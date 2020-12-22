//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(vk_up);

//Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;

//Work out where to move vertically
vsp = vsp + grv;

//Work out if we should jump
if (place_meeting(x,y+1,Obj_Wall)) and (key_jump)
{
    vsp = vsp_jump; 
}

//Check for horizontal collisions and then move if we can
var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
if (place_meeting(x+hsp,y,Obj_Wall))
{
    //move as close as we can
    while (!place_meeting(x+onepixel,y,Obj_Wall))
    {
        x = x + onepixel;
    }
    hsp = 0;
}
x = x + hsp;

//Check for vertical collisions and then move if we can
var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+vsp,Obj_Wall))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,Obj_Wall))
    {
        y = y + onepixel;
    }
    vsp = 0;
}
y = y + vsp;



