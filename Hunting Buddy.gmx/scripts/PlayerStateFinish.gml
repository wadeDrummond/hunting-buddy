///PlayerStateFinish();

//Interpolate Buddy
finishAddAngle = lerp(finishAddAngle, 0, 0.1);

//Submit Every Frame if Over
if comboSubmit   {
    KongregateSubmitScore("COMBOSCORE", pointAmount);
}

//Play Sound
if !finishSoundPlayed   {
    finishSoundPlayed = true;
    sound(sndBuddyFinish);
    
    fade_to(roomOutro);
}

//Restart
if keyboard_check_pressed(vk_escape)    {
    room_restart();
}
