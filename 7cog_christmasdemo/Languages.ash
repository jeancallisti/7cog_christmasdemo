//eLanguage from module Thumbleweed

enum eLanguage {
  eLangEN = 0, //Starting at zero helps avoiding human mistakes when iterating on the enum
  eLangDE,
  eLangES, 
  eLangIT, 
  eLangFR, 
  eLangPT, 
  eLangNL, 
  // 7CoG extra language
  eLangSV
};

struct Languages
{
    import static eLanguage GetLanguageFromTranslationFile();
    import static String GetTranslationNameFromLanguage(eLanguage lang);
};