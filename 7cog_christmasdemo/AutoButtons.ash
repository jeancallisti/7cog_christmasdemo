/*

//All values below defined in Tumbleweed module 
enum Action {
  eGA_LookAt = 0, //Starting at zero helps avoiding human mistakes when iterating on the enum
  eGA_TalkTo,
  eGA_GiveTo,
  eGA_PickUp,
  eGA_Use,
  eGA_Open,
  eGA_Close,
  eGA_Push,
  eGA_Pull,
  eGA_UseInv,
  eGA_Default,
  eGA_WalkTo
};

enum eLanguage {
  eLangEN = 0, //Starting at zero helps avoiding human mistakes when iterating on the enum
  eLangDE,
  eLangES, 
  eLangIT, 
  eLangFR, 
  eLangPT, 
  eLangNL
};

*/

enum AutoButtonStates {
    eAutoButton_off = 0, 
    eAutoButton_on = 1, 
    eAutoButton_hover = 2
};


#define THEMESIZE 20 //this must be bigger than the number of values in AutoButtonsThemeSettings

enum AutoButtonsThemeSettings {
  eAutoBSetting_color_off,   
  eAutoBSetting_color_off_gradienttop,   
  eAutoBSetting_color_off_gradientbottom,   
  eAutoBSetting_color_on,   
  eAutoBSetting_color_on_gradienttop,   
  eAutoBSetting_color_on_gradientbottom,   
  eAutoBSetting_color_hover,   
  eAutoBSetting_color_hover_gradienttop,   
  eAutoBSetting_color_hover_gradientbottom,   
  eAutoBSetting_color_outline,   
  eAutoBSetting_color_shadow 
};

enum AutoButtonThemes {
    eAutoButtonTheme_Red = 0, 
    eAutoButtonTheme_Blue = 1
    
};

struct AutoButtons
{
    import static int[] GetTheme(AutoButtonThemes theme); //Get the settings values from any of the built-in themes
    import static void SetTheme(AutoButtonThemes theme,  int themeSettings[]); //Overwrite an existing theme from your game, without requiring to temper with the module's script (if needed)
    import static int GenerateAll(int themeSettings[]);
    import static DynamicSprite* GetSprite(eLanguage lan,  Action action,  AutoButtonStates state);
    import static int GetSpriteID(eLanguage lan,  Action action,  AutoButtonStates state);
    
    
};
