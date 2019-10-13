///PlayerStateIntro();

introTimer ++;
if (introTimer >= stateTime)  {
    introState ++;
    introTimer = 0;
    
    switch (introState) {
        case 0:
            sound(sndBuddyThree);
            break;
        case 1:
            sound(sndBuddyTwo);
            break;
        case 2:
            sound(sndBuddyOne);
            break;
        case 3:
            sound(sndBuddyHunt);
            break;
        case 4:
            musicPlayIndex = audio_play_sound(musicIndex[g.sceneIndex], 1, true);
            stateCurrent = PSTATES.PLAY;
            break;
        }
    }

introAddAngle = lerp(introAddAngle, 0, 0.1);
