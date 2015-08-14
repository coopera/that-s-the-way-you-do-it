function getPastedContent(e){
  var pastedText;

  if (window.clipboardData && window.clipboardData.getData) { // to work on IE
    pastedText = window.clipboardData.getData('Text');
  } else if (e.clipboardData && e.clipboardData.getData) {
    pastedText = e.clipboardData.getData('text/plain');
  }

  return pastedText;
}
