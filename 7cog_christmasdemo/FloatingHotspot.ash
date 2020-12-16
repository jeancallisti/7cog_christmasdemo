// new module header


struct FloatingHotspot 
{
  import static void SetMaxWidth(int width);
  import static void SetFont(FontType font);
  import static void SetColor(int color);
  import static void SetSlideIn(bool on);
  import static void SetSpring(bool on);
  import static void SetVerticalOffset(int offset);
  import static void UseGui(GUI *toUse);
  import static void UseOverlay();
  import static void Enable();
  import static void Disable();
  import static bool IsEnabled();
  
  //Added by 7CoG : Fix for the demo. Force the text that will appear in the floating hotspot
  import static void FixText(String needle,  String text,  int hotspotID);
};