enum eSkullsSide
{
    eSkullsLeft = 0, 
    eSkullsMiddle = 1, 
    eSkullsRight = 2
};

enum eSaints
{
    eSaintJohn =0, 
    eSaintLuke =1, 
    eSaintThomas=2
};

//Demo's catacombs puzzle (with the skulls in room 3 aka "01 Paris Catacombs"
struct CataPuzzle {
    //Returns true if Init has been called at least once
    import static bool IsInitialized();
    
    //Pass all room objects that are a skull to the module 
    import static void Init(Object* skulls[], eSkullsSide sides[],  int nbSkulls);
    
    //make the skulls graphics match their on/off state
    import static void ResyncSkullsGraphics();
    
    //to be called whenever the player toggles a skull
    import static void ToggleSkull(int skullIndex);
    
    //Returns true of all skulls are correct
    import static bool IsPuzzleSuceeded();
    
    //returns "right", "middle" or "left"
    import static eSkullsSide GetSkullSide(int skullIndex);
    
    //returns "St. John", "St. Luke" or "St. Thomas"
    import static String GetSaintName();
    
    //Returns the clue for one specific saint (in the journal)
    import static String GetSaintSentence(eSaints saint);
    
    //Returns the Saint's clue on the tinted glass
    import static String GetSaintClue();
    
    
};
