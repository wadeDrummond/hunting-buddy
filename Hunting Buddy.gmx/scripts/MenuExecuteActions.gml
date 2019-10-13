///MenuExecuteActions();

switch (menuIndex)  {
    case MENU_TYPES.MAIN: //Main Menu
        switch (menuSelected)   {
            case 0: //NEW GAME
                room_goto(roomCutscene);
                g.sceneIndex = 0;
            break;
            
            case 1: //CONTINUE
            break;
            
            case 2: //COMBO MODE
                room_goto(roomGame);
                g.sceneIndex = 9999;
            break;
        }
    break;
}
