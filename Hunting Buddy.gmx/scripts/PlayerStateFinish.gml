///PlayerStateFinish();

//Interpolate Buddy
finishAddAngle = lerp(finishAddAngle, 0, 0.1);

//Submit Every Frame if Over
if submitKong   {
    KongregateSubmitScore("COMBOSCORE", pointAmount);
}

//Play Sound
if !finishSoundPlayed   {
    finishSoundPlayed = true;
    sound(sndBuddyFinish);
}

//Restart
if keyboard_check_pressed(vk_escape)    {
    room_restart();
}
