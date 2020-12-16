struct Translations
{
    import static void SwitchLanguage(eLanguage lang,  int nextRoom = eRoom_100_MSDOS);
    import static eLanguage IniFile_ReadLanguage(); //Returns -1 if the language was never saved into the .ini before.
    import static void IniFile_SetLanguage(eLanguage lang); // Permanently sets the language into the .ini file
};

//Lets you annotate strings. The annotations won't appear at render time.
import String SmartString(String s);