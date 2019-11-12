$(document).on('turbolinks:load', function(){
  // 商品出品、編集で、lカテゴリー選択時
  $(".exhibit-category-l").on("change", function() {
    input = $(".exhibit-category-l").val();
    url = "/api/categories";
    $.ajax({
      type: 'GET',
      url: url,
      data: {keyword: input, type: "l"},
      dataType: 'script'
    })
  })
  // 商品出品、編集で、mカテゴリー選択時
  $(".exhibit-wrapper__main__details-right__select-wrapper_category").on("change",".exhibit-category-m", function() {
    input = $(".exhibit-category-m").val()
    url = "/api/categories"
    $.ajax({
      type: 'GET',
      url: url,
      data: {keyword: input, type: "m"},
      dataType: 'script'
    })
  })
  // lカテゴリーマウスホバー時、mカテゴリー表示、sカテゴリー非表示
  $(".category-main__navigation__class__object-l").on("mouseenter",function() {
    input = $(this).attr("href");
    id = input.replace(/[^0-9]/g, "");
    url = "/api/categories";
    $(".category-main__navigation-m").css("display", "flex");
    $(".category-main__navigation-s").css("display", "none");
    $.ajax({
      type: 'GET',
      url: url,
      data: {keyword: id, type: "t"},
      dataType: 'script'
    })
  });
  // mカテゴリーマウスホバー時、sカテゴリー表示
  $(document).on("mouseenter", ".category-main__navigation__class__object-m", function() {
    debugger;
    input = $(this).attr("href");
    id = input.replace(/[^0-9]/g, "");
    url = "/api/categories"
    $(".category-main__navigation-s").css("display", "flex");
    $.ajax({
      type: 'GET',
      url: url,
      data: {keyword: id, type: "u"},
      dataType: 'script'
    });
  });
  // カテゴリー欄からマウスが離れた時、全て非表示
  $(".category-main__navigation").on("mouseleave",function() {
    $(".category-main__navigation-m").css("display", "none");
    $(".category-main__navigation-s").css("display", "none");
  });
})
