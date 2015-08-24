codefyText = function(s){
  return "\n\n"+ markupText + lang + "\n" + s + markupText + "\n\n";
}

getLanguage = function(s){
  return langs[getExtension.exec(s)[1]] || lang;
}
