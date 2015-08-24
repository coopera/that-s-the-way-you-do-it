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
//= require cocoon
//= require turbolinks
//= require_tree .
//= require_self

document.addEventListener("DOMContentLoaded", function () {
  var doc_implementation = document.getElementById('doc_implementation');

  doc_implementation.onpaste = function(e) {
    var pastedLink = getPastedContent(e);

    if(pastedLink.search("github.com/") != -1 && pastedLink.search("api.github.com/") == -1){

      var text;

      if (pastedLink.search("commit/") != -1) {
        text = parseCommitUrl(pastedLink);
      }
      else{
        text = parseFileUrl(pastedLink);
      }

      doc_implementation.value +=  text;

      e.preventDefault();
    }
  };
});


// https://github.com/IgorMarques/that-s-the-way-you-do-it/commit/9aa9fc5d201240758f09e9c1b2aca919e2c288db
// "https://api.github.com/repos/octocat/Hello-World/git/commits/6dcb09b5b57875f334f61aebed695e2e4193db5e

//transforms this https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb

//into this https://api.github.com/repos/IgorMarques/that-s-the-way-you-do-it/contents/app/models/doc.rb

//if it's a line link, gets only the line

// https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L2-L4

//if it's a multiple line link, gets all lines

//https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L2-L4
