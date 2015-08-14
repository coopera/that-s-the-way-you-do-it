function getApiUrl(url){
  var x = url.split("github.com/")[1]
  var y = x.split("blob")[0] + x.split("blob/")[1].replace("master","contents")

  return "https://api.github.com/repos/" + y
}
