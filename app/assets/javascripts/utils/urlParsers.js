function getFileApiUrl(url){
  var x = url.split("github.com/")[1];
  var y = x.split("blob")[0] + x.split("blob/")[1].replace("master","contents");

  return "https://api.github.com/repos/" + y;
}

function getCommitApiUrl(url){
  return "https://api.github.com/repos/" + url.split("github.com/")[1].split("commit")[0] + "commits/" + url.split("commit/")[1];
}


function getPullApiUrl(url){
  var splitUrl = url.split("github.com/")[1].split("/pull/");
  var userAndRepo = splitUrl[0];
  var pullNumber = splitUrl [1];
  return "https://api.github.com/repos/" + userAndRepo + "/pulls/" + pullNumber;
}

// https://github.com/IgorMarques/that-s-the-way-you-do-it/pull/19
// https://api.github.com/repos/IgorMarques/that-s-the-way-you-do-it/pulls/19
