///PlayerInitCombo();

comboMode = (g.sceneIndex == 9999);
if comboMode    {
    comboAmount = 1;
    comboTimerMax = fs(2.5);
}   else    {
    comboAmount = 0;
    comboTimerMax = fs(2.2);
}
comboTimer = comboTimerMax;
comboAlpha = 0;
comboScaleAdd = 0;
comboScore = 0;
comboSet = false;
comboSubmit = false;
