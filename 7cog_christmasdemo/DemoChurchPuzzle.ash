enum ChurchPuzzleEntityStates {
  eChurchState_undefined = 0, 
  eChurchState_shieldVertic = 400, 
  eChurchState_shieldDiag, 
  eChurchState_shieldHoriz, 
  eChurchState_eyeBlue, 
  eChurchState_eyeRed, 
  eChurchState_eyeYellow, 
  eChurchState_basinEmpty, 
  eChurchState_basinFull, 
};

enum ChurchPuzzleEntityTypes {
    eChurchType_Shield = 300,    //arbitrary values that don't overlap with other values
    eChurchType_DragonEye = 301, 
    eChurchType_Basin = 302, 
    eChurchType_Steam = 303
};
    
    
struct ChurchPuzzle {
  import static void AddEntity(String name, ChurchPuzzleEntityStates initialState, ChurchPuzzleEntityTypes entityType,  Object* obj);
  import static void SetEntityState(String name,  ChurchPuzzleEntityStates state);
  import static ChurchPuzzleEntityStates GetEntityState(String name);
  import static void SyncGraphics();
  import static int  GetEntityCount();
  import static void Interact(Object* o);
  
  //Returns true if everything is correct (all of the below)
  import static bool  IsSolved();
  
  //Returns true if the shields are correct
  import static bool  IsShieldsCorrect();
  //Returns true if the dragon's eyes are correct
  import static bool  IsEyesCorrect();
  //Returns true if the music notes / steam from the wall are correct
  import static bool  IsNotesCorrect();
};