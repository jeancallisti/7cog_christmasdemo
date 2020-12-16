enum SteamPuzzleEntityStates {
  eSteamState_undefined, 
  eSteamState_switchUp, 
  eSteamState_switchDown, 
  eSteamState_steamOff, 
  eSteamState_steamOn, 
  eSteamState_leakNotFixed, 
  eSteamState_leakFixed 
};

enum SteamPuzzleEntityPowerStates {
  eSteamState_powerOn = 100, //arbitrary values that don't overlap with other values
  eSteamState_powerOff = 101
};


enum SteamPuzzleEntityTypes {
    eSteamType_switch = 200,  //arbitrary values that don't overlap with other values
    eSteamType_steam = 201, 
    eSteamType_leak = 202
};


struct SteamPuzzle {
  import static void AddEntity(String name, SteamPuzzleEntityStates initialState, SteamPuzzleEntityTypes entityType,  Object* obj);
  import static bool  HasPower(String name);
  import static void SetEntityState(String name,  SteamPuzzleEntityStates state,  bool showTransition = true);
  import static int  GetEntityCount();
  import static void Interact(Object* o);
  import static bool  IsSolved();
};