parseCommitUrl = function(url){
  // var changes = JSON.parse(httpGet(getCommitApiUrl(url))["files"]);
  var changes = JSON.parse(httpGet(getCommitApiUrl(url)))["files"];

  var changed_files = url + "\n\n";

  for (var i = 0; i < changes.length; i++) {
    changed_files += formatCommitText(changes[i]);

  }
  return changed_files
}

// https://github.com/IgorMarques/that-s-the-way-you-do-it/commit/9aa9fc5d201240758f09e9c1b2aca919e2c288db
// "https://api.github.com/repos/octocat/Hello-World/git/commits/6dcb09b5b57875f334f61aebed695e2e4193db5e

getRelevantLines = function(patch){
  return patch.split("@@")[2];
}

formatCommitText = function(change){
  //add language here
  lang = "diff";
  // lang = langs[getExtension.exec(change["blob_url"])[1]] || lang;

  return change["blob_url"] + "\n\n"+ markupText + lang + "\n" + getRelevantLines(change["patch"]) + "\n" + markupText + "\n\n";
}
