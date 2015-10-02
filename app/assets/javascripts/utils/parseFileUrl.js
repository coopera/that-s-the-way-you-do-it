parseFileUrl = function(pastedLink){
  var index = -1;
  var finalIndex;

  var fileName = pastedLink.split("#")[0];

  var lang = getLanguage(fileName);

  if(pastedLink.search("#L") != -1){
    index = parseInt(pastedLink.split("#L")[1]);
    finalIndex = pastedLink.split("#L")[1].split("-L")[1] || index;
  }

  file = getFileApiUrl(pastedLink);

  content = Base64.decode(JSON.parse(httpGet(file))["content"]);

  var code = getAppropriateLines(content, index, finalIndex);

  return codefyText(code)
}
