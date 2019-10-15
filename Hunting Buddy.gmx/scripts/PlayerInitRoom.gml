///PlayerInitRoom();

instance_create(0, 0, objFloor);
instance_create(0, 0, objSkybox);
instance_create(0, 0, objFence);

repeat (40)
    instance_create(irandom(room_width), irandom(room_height), objDetailDay);

repeat (20)
    instance_create(0, 0, objDetailDayLarge);
    
repeat (14)
    event_user(0);

//Level Specific Attributes
pointsIndex[0] = 300;
pointsIndex[9999] = -1;
musicIndex[0] = bgmWoodlandLiving;
musicIndex[9999] = bgmPASWO;

musicLength = audio_sound_length(musicIndex[g.sceneIndex]);
musicLength = 1;
musicPlayIndex = -1;

pointAmount = 0;
pointQuota = pointsIndex[g.sceneIndex];

//Decrements
g.pointDecrement[0] = -1;
g.pointDecrement[1] = -2;
g.pointDecrement[2] = -5;
g.pointDecrement[3] = -10;
g.pointDecrementState = 0;
g.pointDecrementTimer = 0;
