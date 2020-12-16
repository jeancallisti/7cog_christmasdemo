////////////////////////////////////////
//
//    Credits system in the style of Fate of Atlantis
//
//    author: Ryan Timothy
//    small modifications: monsieur_ouxx
//
//
//    What it does :
//    1) zooms in the "Indiana Jones logo"
//    2) makes its yellow/orange color scroll vertically, like an old-fashioned palette scroll
//    3) Makes the credits text fade in and out (the inner color (blue, purple) fades, the black outline just pops in and out)
//
/////////////////////////////////////////


//START SEVEN CITIES MODIFS : moved the enum from module body to header
enum creditPhaseEnum{
  eNotStarted, 
  eStarting, 
  eFadeIn, 
  eNormal, 
  eFadeOut, 
  eFinished
};
//END SEVEN CITIES MODIFS

// new module header

import void IntroCredits_InitializeCredits();
import void IntroCredits_AddCreditWithTitle(String title, String name);
import void IntroCredits_AddCredit(String name);

import void IntroCredits_StartGameLogo();
import void IntroCredits_StopGameLogo();
import void IntroCredits_StartNextCredit();

//START SEVEN CITIES MODIFS : added this function
import creditPhaseEnum GetCurrentCreditsPhase();
import bool IntroCredits_IsCreditsRunning();
import bool IntroCredits_IsLogoRunning();
//END SEVEN CITIES MODIFS