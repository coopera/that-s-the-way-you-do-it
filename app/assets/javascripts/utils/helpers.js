codefyText = function(s){
  return markupText + lang + "\n" + s + markupText + "\n";
}

getLanguage = function(s){
  return langs[getExtension.exec(s)[1]] || lang;
}
