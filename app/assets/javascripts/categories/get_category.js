$(document).on('turbolinks:load', function(){
  // 二個目以降のselectboxを表示させる。今後実施。本当のDOMはitem_category_id
  $("#item_category").on("change", function() {
    input = $("#item_category").val()
    url = "/api/categories"
    $.ajax({
      type: 'GET',
      url: url,
      data: {keyword: input},
      dataType: 'script'
    })
  })
})