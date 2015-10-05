parsePullUrl = function(url){

  var commitsUrl = JSON.parse(httpGet(getPullApiUrl(url)))["commits_url"];

  var commits  = JSON.parse(httpGet(commitsUrl));

  var changedFiles = "";

  for (var i = 0; i < commits.length; i++) {
    var changes = JSON.parse(httpGet(commits[i]["url"]))["files"];

    for (var j = 0; j < changes.length; j++) {
      changedFiles += formatCommitText(changes[j]);
    }
  }

  return changedFiles;
}
