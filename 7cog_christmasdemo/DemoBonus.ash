//This script manages the access to the bonuses in the demo

struct DemoBonus {
  //Once the bonuses are enabled, they're enabled permanently in any saved game, even after leaving the game.
  //To reset the bonus, just delete BONUS.ini in the game's folder
  import static void EnableBonus();
  
  import static bool IsBonusEnabled();
    
    
  import static void StartOldDemo();
    
};