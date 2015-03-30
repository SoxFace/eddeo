$(document).ready(function() {
  $(".fancybox").fancybox({
      type: "iframe",
      titlePosition: "inside",
      transitionIn: 'fade',
      transitionOut: 'fade',
      beforeShow: function () {
              var id = this.element.data('id');
              this.title = (this.title) + "<a class ='view_lesson' href='/featured/" + id + "'> Take Notes & Watch</a>";
          }
  });

  var createNewView = function (id) {

    $.ajax("/views", { 
      dataType:'json',
      data: { video_id: id },
      method: 'POST',
      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))}
    });
  }

  // When we click on the image
  // Set a timer and wait 5 seconds
  // If it hits 5 seconds, send an ajax request to views/create with user_id and video_id
  $(".thumb").click(function() {
      $(this).addClass("active");
      var video_id = $(this).parent().data("id");
      var createNewViewTimer = setTimeout(function () {
        createNewView(video_id)
      }, 5000)
  });

});  