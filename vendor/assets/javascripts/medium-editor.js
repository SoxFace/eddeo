$(document).ready(function() {
  var editor = new MediumEditor('.editable', {
            buttonLabels: 'fontawesome'
        }),
        cssLink = document.getElementById('medium-editor-theme');
        document.getElementById('sel-themes').addEventListener('change', function () {
            cssLink.href = '../stylesheets/themes/' + this.value + '.css';
        });

  $('.editable').on('input', function() {
    // Do some work
  });  
});