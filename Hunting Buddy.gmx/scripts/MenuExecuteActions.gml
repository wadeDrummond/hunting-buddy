///MenuExecuteActions();

switch (menuIndex)  {
    case MENU_TYPES.MAIN: //Main Menu
        switch (menuSelected)   {
            case 0: //NEW GAME
                fade_to(roomCutscene);
                g.sceneIndex = 0;
            break;
            
            case 1: //CONTINUE
            break;
            
            case 2: //COMBO MODE
                fade_to(roomGame);
                g.sceneIndex = 9999;
            break;
            
            case 3: //OPTIONS
                fade_to(roomOutro);
            break;
        }
    break;
}
