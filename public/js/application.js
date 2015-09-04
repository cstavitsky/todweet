$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  // $(".task-button").on("submit", function(event) {

  // });

  //when the page loads, find all the checkboxes that have completed tasks and select them, and then change them to prop checked = true.
  // First, load the widgets.js file asynchronously
twttr.ready(function (twttr) {
    twttr.events.bind('tweet', function(event) {
      alert("tweet!");
      $(event.target).closest("div li form").find(".checkboxes").click();
    });
   });

  $(".checkboxform").on("click", ":checkbox", function(){
    var id = $(this).closest("div").attr('id');

    var request = $.ajax({
      url: "/tasks/"+id+"/edit",
      method: 'put'
    })

    request.done(function(responseData){
      // $("#"+id).prop("checked", true);
      $("Twitter_button").click();
    })

  })
});

