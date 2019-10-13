///PlayerStateFinish();

//Interpolate Buddy
finishAddAngle = lerp(finishAddAngle, 0, 0.1);

//Submit Every Frame if Over
if submitKong   {
    KongregateSubmitScore("COMBOSCORE", pointAmount);
}
