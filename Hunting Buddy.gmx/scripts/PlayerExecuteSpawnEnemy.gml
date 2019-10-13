///PlayerExecuteSpawnEnemy();

var _ID = instance_create(irandom(room_width), irandom(room_height), objEnemyRabbit);

while (point_distance(_ID.x, _ID.y, cameraX, cameraY) < (enemyDistance + 64))    {
    _ID.x = irandom(room_width);
    _ID.y = irandom(room_height);
}

if !instance_exists(enemyTarget)    {
    enemyTarget = _ID;
    enemyWord = enemyTarget.enemyWordIndex;
    enemyWordTyped = enemyTarget.enemyWordTyped;
}
