var initiated = false;
$(function() {
  if(!initiated){
    initPage();
    initiated = true;
  }
});
$(window).bind('page:change', function() {
  if(!initiated){
    initPage();
    initiated = true;
  }
});
function initPage() {
  try {
    var editor = ace.edit("editor");

      editor.$blockScrolling = Infinity;

      editor.setTheme("ace/theme/github");
      var textarea = $('textarea[name="doc[implementation]"]').hide();
      editor.getSession().setValue(textarea.val());
      editor.getSession().on('change', function(){
        textarea.val(editor.getSession().getValue());
      });

      editor.on("paste", function(e){
        var pastedLink = e.text;

        lang = "ruby";
        markupText = "```";

        if(pastedLink.search("github.com/") != -1 && pastedLink.search("api.github.com/") == -1){

          var text;

          if (pastedLink.search("commit/") != -1) {
            text = parseCommitUrl(pastedLink);
          }
          else if (pastedLink.search("/pull/") != -1){
            text = parsePullUrl(pastedLink);
          }
          else {
            text = parseFileUrl(pastedLink);
          }

          var session = editor.session

          session.insert({
             row: editor.getCursorPosition().row,
             column: 0
          }, text)

        }
      });

  } catch (e) {
    console.log('Can\'t find ace')
  }
}

// https://github.com/IgorMarques/that-s-the-way-you-do-it/commit/9aa9fc5d201240758f09e9c1b2aca919e2c288db
// "https://api.github.com/repos/octocat/Hello-World/git/commits/6dcb09b5b57875f334f61aebed695e2e4193db5e

//transforms this https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb

//into this https://api.github.com/repos/IgorMarques/that-s-the-way-you-do-it/contents/app/models/doc.rb

//if it's a line link, gets only the line

// https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L2-L4

//if it's a multiple line link, gets all lines

//https://github.com/IgorMarques/that-s-the-way-you-do-it/blob/master/app/models/doc.rb#L2-L4
