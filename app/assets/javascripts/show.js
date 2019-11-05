$(document).on('turbolinks:load', function(){
  $(".inner-img").hover(function(){
    $(".item-img").attr("src", $(this).attr("src"));
  });
});