parsePullUrl = function(url){

  var commits_url = JSON.parse(httpGet(getPullApiUrl(url)))["commits_url"];

  var commits  = JSON.parse(httpGet(commits_url));

  var changed_files = "";

  console.log(commits.length);

  for (var i = 0; i < commits.length; i++) {
    var changes = JSON.parse(httpGet(commits[i]["url"]))["files"];

    for (var j = 0; j < changes.length; j++) {
      changed_files += formatCommitText(changes[j]);
    }
  }

  return changed_files;
}


// https://github.com/IgorMarques/that-s-the-way-you-do-it/pull/19
// https://api.github.com/repos/IgorMarques/that-s-the-way-you-do-it/pulls/19
