///PlayerStatePlay();

//Spawn Enemies
if (instance_number(parEnemy) < 12)    {
    event_user(0);
}

//Targeting and Attacking
with (parEnemy)
    enemyTargeted = false;
if enemyTarget != noone {
    enemyDirection = point_direction(cameraX, cameraY, enemyTarget.x, enemyTarget.y);
    if ((point_distance(cameraX, cameraY, enemyTarget.x, enemyTarget.y) > enemyMinDistance))    {
        var _Speed = cameraSpeedMove;
    }   else    {
        var _Speed = 0;
    }

    cameraVelocityX = approach(cameraVelocityX, lengthdir_x(_Speed, cameraYaw), cameraSpeedAccelerate);
    cameraVelocityY = approach(cameraVelocityY, lengthdir_y(_Speed, cameraYaw), cameraSpeedAccelerate);
    cameraX += cameraVelocityX
    cameraY += cameraVelocityY
    cameraX = clamp(cameraX, g.minX, g.maxX);
    cameraY = clamp(cameraY, g.minY, g.maxY);
    
    enemyTarget.enemyTargeted = true;
    
    if keyboard_check_pressed(vk_anykey)    {
        inputKey = keyboard_lastchar;
        if inputKey != " "  {
            with (enemyTarget)  {
                var _nextKey = string_char_at(enemyWordIndex, enemyWordPosition + 1);
                if string_upper(_nextKey) == string_upper(other.inputKey)   {
                    event_user(0); //Increment
                }   else    {
                    event_user(2); //Miss
                }
            }
        }
    }       
}

//Combo Stuff
if comboAmount > 1  {
    comboTimer = max(comboTimer - 1, 0);
    if comboTimer <= 0  {
        event_user(1);
    }
    comboAlpha = lerp(comboAlpha, 1, 0.2);
    comboSet = true;
}   else    {
    comboAlpha = lerp(comboAlpha, 0, 0.2);
    if comboSet {
        comboSet = false;
        pointAmount += comboScore;
    }
}

//Decrement
if (g.pointDecrementState > 0)  {
    g.pointDecrementTimer = max(g.pointDecrementTimer - 1, 0);
    if g.pointDecrementTimer <= 0   {
        g.pointDecrementState = max(g.pointDecrementState - 1, 0);
        g.pointDecrementTimer = fs(1);
    }
}

//Billboard Ordering
var _orderGrid = ds_grid_create(2, instance_number(parBillboard));
for (var i = 0; i < instance_number(parBillboard); i ++)    {
    var _ID = instance_find(parBillboard, i);
    var _Distance = point_distance(_ID.x, _ID.y, cameraX, cameraY);
    _orderGrid[# 0, i] = _ID;
    _orderGrid[# 1, i] = _Distance;
}
ds_grid_sort(_orderGrid, 1, true);
var _startDepth = -200;
for (var i = 0; i < ds_grid_height(_orderGrid); i ++)    {
    var _ID = _orderGrid[# 0, i];
    _ID.depth = _startDepth;
    _startDepth ++;
}
ds_grid_destroy(_orderGrid);

//Camera Tweening and Variable Upkeep
var _interpSpeed = (point_distance(cameraXLast, cameraYLast, cameraX, cameraY) / cameraSpeedMove);
cameraAddTween += (15 * _interpSpeed);
cameraXLast = cameraX;
cameraYLast = cameraY;
