$(document).on('turbolinks:load', function(){
  var drag_space = $(".exhibit-wrapper__main__image__drag")
  var drag_space_form = $("#exhibit__file-form")
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
    var id = drag_space.attr("data-exhibitid");
    $(`.exhibit-wrapper__main__image__cards__card-${id}`).addClass("exhibit-active");
    var newid = Number(id) + 1
    drag_space.attr("data-exhibitid", newid);
    var reader = new FileReader();
    reader.onload = function(e){
      $(`.exhibit-image-${Number(id)}`).attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
    var area = drag_space_form.map(function() {
      return $(this).val()
    })
    console.log(area);
  })
  $(document).on("click", "exhibit-wrapper__main__image__cards__card__button__delete", function() {
    card = $(this).parent().parent()
    card.removeClass('exhibit-active')
  })
})
  //   
