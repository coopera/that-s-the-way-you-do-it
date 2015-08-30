parseCommitUrl = function(url){
  var changes = JSON.parse(httpGet(getCommitApiUrl(url)))["files"];

  var changed_files = "";

  for (var i = 0; i < changes.length; i++) {
    changed_files += formatCommitText(changes[i]);
  }
  return changed_files;
}

getRelevantLines = function(patch){
  return patch.split("@@")[2];
}

formatCommitText = function(change){
  lang = "diff";
  // lang = getLanguage(change["blob_url"])

  return codefyText(getRelevantLines(change["patch"])+ "\n");
}
