$(function(){
  let top_tabs = $(".mypage-notification__tabs__list");
  let bottom_tabs = $(".mypage-purchase__tabs__list");

  $(".mypage-notification__tabs__list").on('click', function(e){
    e.preventDefault();
  $(".mypage-notification__tabs__list").removeClass("active");
  $(this).addClass("active");
  const index = top_tabs.index(this);
  $(".content").removeClass("show").eq(index).addClass("show");
  });

  $(".mypage-purchase__tabs__list").on('click', function(e){
    e.preventDefault();
  $(".mypage-purchase__tabs__list").removeClass("active");
  $(this).addClass("active");
  const index = bottom_tabs.index(this);
  $(".mypage-purchase-content").removeClass("show").eq(index).addClass("show");
  });
});