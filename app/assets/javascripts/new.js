$(function(){
  var drag_space = $(".exhibit-wrapper__main__image__drag")
  drag_space.on('dragenter', function(e){
    e.preventDefault();
    $(this).css("border", "2px solid rgba(204,204,204,0.9)");
  });
  drag_space.on('dragover', function(e){
    e.preventDefault();
  });
  drag_space.on('drop', function(e){
    $(this).css('broder', '2px dotted rgba(204,204,204,0.9)');
    e.preventDefault();
    var file_field = $("#exhibit__file-form");
    document.getElementById("exhibit__file-form").files = e.originalEvent.dataTransfer.files;
    
  });
})