$(function(){
  //フォーム指定
  $('form_for').validate({

    //検証ルール設定
    rules: {
      nickname: {
        required: true
      }
    },

    //エラーメッセージ設定
    messages: {
      nickname: {
        required: '名前を入力してください'
      }
    },

    //エラーメッセージ出力箇所
    errorPlacement: function(error, element){
      error.insertAfter(element);
    },
    debug: true
  });
});