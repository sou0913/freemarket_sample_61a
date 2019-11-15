$(document).on("turbolinks:load", function() {
  var controller = $('body').data("controller");
  var action = $('body').data("action");
  try {
    if (controller != "registrations" || action != "new"){throw new Error(e)} 
      // popstateイベントは履歴が変更されることで発生
      window.addEventListener('popstate', function(e) {
        window.location.reload();
      })
  }catch(e){}
})