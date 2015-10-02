function httpGet(theUrl)
{
  var xmlHttp = new XMLHttpRequest();
  xmlHttp.open( "GET", theUrl, false );
  if (token) {
    xmlHttp.setRequestHeader('Authorization','token '+ token);
  }
  xmlHttp.send( null );
  return xmlHttp.responseText;
}
