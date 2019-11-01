$(document).on('turbolinks:load', function(){
  function buildHTML(img){ 
  html = `<div class="exhibit-wrapper__main__image__cards__card">
            <div class="exhibit-wrapper__main__image__cards__card__image">
              <img src= '${img}' class: 'exhibit-image'>
            <div class="exhibit-wrapper__main__image__cards__card__button">
              <a href="#">編集</a> 
              <a href="#">削除</a>
            </div>
          </div>`;
  return html;
  }
  var drag_space = $(".exhibit-wrapper__main__image__drag")
  var drag_space_form = $(".exhibit-wrapper__main__image__drag__form")
  drag_space.on('dragenter', function(e){
    e.preventDefault();
    $(this).css("border", "2px solid rgba(204,204,204,0.9)");
  });
  drag_space.on('dragover', function(e){
    e.preventDefault();
  });
  drag_space.on('drop', function(e){
    $(this).css('border', '2px dotted rgba(204,204,204,0.9)');
    e.preventDefault();
    document.getElementById("exhibit__file-form").files = e.originalEvent.dataTransfer.files;
  });
  drag_space_form.on("change", function(e){
    $(this).prop('readonly', true);
    $(this).next().prop('readonly', false);
    $("#item_images_attributes_9_image").after(this)
    var reader = new FileReader();
    reader.onload = function(e){
      addCard = buildHTML(e.target.result);
      $(".exhibit-wrapper__main__image__cards-appended").append(addCard);
    }
    reader.readAsDataURL(e.target.files[0]);
  })
  // $(document).on("click", "exhibit-wrapper__main__image__cards__card__button__delete", function() {
  //   card = $(this).parent().parent()
  //   card.removeClass('exhibit-active')
  // })
})
