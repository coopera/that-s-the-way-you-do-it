parseFileUrl = function(pastedLink){
  var index = -1;
  var finalIndex;

  var fileName = pastedLink.split("#")[0];

  var lang = langs[getExtension.exec(fileName)[1]] || lang

  if(pastedLink.search("#L") != -1){
    index = parseInt(pastedLink.split("#L")[1]);
    finalIndex = pastedLink.split("#L")[1].split("-L")[1];
  }

  file = getFileApiUrl(pastedLink);

  content = Base64.decode(JSON.parse(httpGet(file))["content"]);

  var code = getAppropriateLines(content, index, finalIndex);

  return pastedLink + "\n\n" + markupText + lang + "\n" + code + markupText;
}
