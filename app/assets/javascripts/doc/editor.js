loadEditor = function() {
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

          var isAcommit = pastedLink.search("commit/") != -1;
          var isApull = pastedLink.search("/pull/") != -1;

          if (isAcommit) {
            text = parseCommitUrl(pastedLink);
          }
          else if (isApull){
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
