$(document).on('turbolinks:load', function(){
  var controller = $('body').data("controller");
  var action = $('body').data("action");
  try {
    if (controller != "users" || action != "listing"){throw new Error(e)}
    window.onload = function() {
      $(".side-nav__list__item-listing").css("background-color", "#eee");
    }
  }catch(e){}
})