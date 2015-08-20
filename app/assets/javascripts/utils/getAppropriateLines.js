function getAppropriateLines(content, index, finalIndex){

  if(index != -1){
    var lines = content.split("\n");
    var result = "";
    for (var i = index; i <= finalIndex; i++) {
      result += lines[i-1] + "\n";
    }

    return result
  }

  return content;
}
