///PlayerInitIntroduction();

enum PSTATES    {
    INTRO, PLAY, FINISH
}

stateCurrent = PSTATES.INTRO;

stateSprite[0] = sprBuddyCountdownIdle;
stateSprite[1] = sprBuddyCountdownThree;
stateSprite[2] = sprBuddyCountdownTwo;
stateSprite[3] = sprBuddyCountdownOne;
stateSprite[4] = sprBuddyCountdownHunt;
stateTime = room_speed * 0.6;
introTimer = 0;
introState = -1;
finishAddAngle = -180;
finishSoundPlayed = false;
introAddAngle = -180;
introAddAngleTarget = -180;
textBaseX = 0;
textBaseY = 0;
gunScale = 0;
