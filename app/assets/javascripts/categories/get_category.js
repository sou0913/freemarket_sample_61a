$(document).on('turbolinks:load', function(){
  $("#item_category").on("change", function() {
    $.ajax({
      type: 'GET',
      url: ''
    })
  })
})