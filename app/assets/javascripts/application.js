// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require_self

document.addEventListener("DOMContentLoaded", function () {
  var doc_implementation = document.getElementById('doc_implementation');

  doc_implementation.onpaste = function(e) {
    var pastedLink = getPastedContent(e);

    if(pastedLink.search("github.com/") != -1){

      var index = -1;
      var finalIndex;
      var lang = "ruby";
      var markupText = "```";

      var fileName = pastedLink.split("#")[0];

      var lang = langs[getExtension.exec(fileName)[1]] || lang

      if(pastedLink.search("#L") != -1){
        index = parseInt(pastedLink.split("#L")[1]);
        finalIndex = pastedLink.split("#L")[1].split("-L")[1];
      }

      file = getApiUrl(pastedLink);

      content = Base64.decode(JSON.parse(httpGet(file))["content"]);

      var code = getAppropriateLines(content, index, finalIndex);

      doc_implementation.value += pastedLink + "\n\n" + markupText + lang + "\n" + code + markupText;

      e.preventDefault();
    }
  };
});

//transforms this https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb

//into this https://api.github.com/repos/IgorMarques/that-s-the-way-you-do-it/contents/app/models/doc.rb

//if it's a line link, gets only the line

// https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L2-L4

//if it's a multiple line link, gets all lines

//https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L2-L4
