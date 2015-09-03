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
