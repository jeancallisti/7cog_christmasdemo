// new module header
////////////////////////////////////////////
//
//      INDY-STYLE TRAVEL MAP MODULE
//      For AGS 3.2.1+
//
//      Authors : The 'Indiana Jones and the Seven Cities of Gold' team
//                (contact: 'Monsieur Ouxx' on the AGS forums)
//                Most of the code is based on Scavenger's prototype (we had to remove the raccoon's sprite, though :'(
//
//      Dependencies : 'Smooth scrolling' module (you may remove it!)
//      License : GPL. In a nutshell: Just credit us and you can do whatever you want.
//
//      HOW TO USE
//      
//      - create the following elements in your game:
//        o Create two non-clickable GUI's, 320x200. They will be used as overlays for the vehicle
//        o Create a room (can be larger than 320x200). The background is the map
//        o Create an invisible character (no sprite) and DON'T FORGET to set it as the player character
//        o In the room, create an object (no sprite) that has the size of the room (not the screen). It will be used as the overlay to draw the red travel line
//      - In the room :
//        o Make sure you call IndyTravelMap.room_Load(...) in the "room before fade-in" event.
//          The Gui's in parameter must be the ones you created earlier.
//          The object in parameter is the one you created earlier.
//        o Make sure you call IndyTravelMap.room_AfterFadeIn(...) in the "room after fade-in" event
//        o Make sure  you call IndyTravelMap.repeatedly_execute_always(...) in the "room execute always" event
//        o Make sure you call IndyTravelMap.room_Leave(...) in the "leave room" event
//      - Comment out the calls to 'SmoothScroll_ScrollingOn' and 'SmoothScroll_ScrollingOff' if you don't use smooth scrolling
//      - Draw manually some Regions. Each region will correspond to a specific type of vehicle (in this demo, Region 1 is for planes, and Region 2 is for truck)
//      - In the room's "room_load" function, call "IndyTravelMap.addVehicle" as many times as necessary to map each region to each vehicle.
//
//      OPTIONAL
//      - in room_load, you may call "IndyTravelMap.setLineOptions" to set the color and thickness of the red travel line
//      - in room_load, you may call "IndyTravelMap.setVehicleOptions" to set the transparency of the vehicles overlay (they're currenlty set to 50% transp.) and the speed to which they fade in and out
//
//      ADDITIONAL NOTES:
//      - There are two known TINY bugs:
//          o sometimes, the vehicles brutally change with no cross-fade (very rare)
//          o There's a red spot drawn somewhere on the map. I'm too lazy to figure it out right now.
//      - This module hasn't been properly tested with more than 2 vehicles but it should work, unless the vehicles change happens faster than the cross-fade
//////////////////////////////////////////////////////


struct IndyTravelMap
{
  //don't forget to call this function in your room's "room_afterFadeIn" function
  import static void room_AfterFadeIn();
  
  //don't forget to call this function in your room's "room_Leave" function
  import static void room_Leave();  
  
  //see manual above for the meaning of the parameters
  import static void room_Load(Object* _oLines,  bool _enableSmoothScrolling,  GUI* __gVehicle1,   GUI* __gVehicle2);
  
  //don't forget to call this function in your room's "repeatedly_execute_always" function
  import static void repeatedly_execute_always();
  
  //see manual above to know how to use
  import static void setLineOptions(int color,  int transparency); //optional
  import static void setVehicleOptions(int maxTransparency,  int transitionSpeed); //optional
  import static void addVehicle(int regionID, int graphicID,  int X,  int Y);
  
  //in room_load, add as many waypoints for the travelling as necessary.
  import static void addWaypoint(int X,  int Y);
  
};
