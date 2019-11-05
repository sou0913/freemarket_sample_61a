$(document).on('turbolinks:load', function(){
  $(".my-item__edit-delete__buttons__delete").on("click", function(e){
    e.preventDefault();
    $(".my-item__pop-up").addClass("my-item__pop-up__show");
  })
  $(document).on("click", ".my-item__pop-up__content__left", function(){
    $(".my-item__pop-up").removeClass("my-item__pop-up__show");
  })
})