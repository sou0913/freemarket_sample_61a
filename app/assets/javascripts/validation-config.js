$(document).on('turbolinks:load', function(){
$(function(){
  //フォーム指定
  $('#form').validate({

    //検証ルール設定
    rules: {
      "user[nickname]": {
        required: true
      },
      "user[email]": {
        required: true,
        email: true
      },
      "user[password]": {
        required: true,
        minlength: 6,
        maxlength: 128
      },
      "user[password_confirmation]": {
        required: true,
        minlength: 6,
        maxlength: 128
      },
      "user[family_name]": {
        required: true
      },
      "user[first_name]": {
        required: true
      },
      "user[family_kana]": {
        required: true
      },
      "user[first_kana]": {
        required: true
      },
      "user[birthday(1i)]": {
        required: true
      },
      "user[birthday(2i)]": {
        required: true
      },
      "user[birthday(3i)]": {
        required: true
      },
      "user[phone_number]": {
        required: true,
        number: true
      },
      "user[phone_number_deliver]": {
        number: true
      },
      "user[postal_code]": {
        required: true,
        number: true
      },
      "user[prefectures]": {
        required: true
      },
      "user[city]": {
        required: true
      },
      "user[house_number]": {
        required: true
      }
    },

    //エラーメッセージ設定
    messages: {
      "user[nickname]": {
        required: '名前を入力してください'
      },
      "user[email]": {
        required: 'メールアドレスを入力してください',
        email: 'メールアドレスを正確に入力してください'
      },
      "user[password]": {
        required: 'パスワードを入力してください',
        minlength: '6文字以上で入力してください',
        maxlength: '128文字以下で入力してください'
      },
      "user[password_confirmation]": {
      required: 'パスワードを入力してください',
      minlength: '6文字以上で入力してください',
      maxlength: '128文字以下で入力してください'
      },
      "user[family_name]": {
        required: '名字を入力してください'
      },
      "user[first_name]": {
        required: '名前を入力してください'
      },
      "user[family_kana]": {
        required: '名字(カナ)を入力してください'
      },
      "user[first_kana]": {
        required: '名前(カナ)を入力してください'
      },
      "user[birthday(1i)]": {
        required: '生まれた年を入力してください'
      },
      "user[birthday(2i)]": {
        required: '生まれた月を入力してください'
      },
      "user[birthday(3i)]": {
        required: '生まれた日を入力してください'
      },
      "user[phone_number]": {
        required: '電話番号を入力してください',
        number: '数字のみ入力してください'
      },
      "user[phone_number_deliver]": {
        number: '数字のみ入力してください'
      },
      "user[postal_code]": {
        required: '郵便番号を入力してください',
        number: '数字のみ入力してください'
      },
      "user[prefectures]": {
        required: '都道府県を入力してください'
      },
      "user[city]": {
        required: '市区町村を入力してください'
      },
      "user[house_number]": {
        required: '番地を入力してください'
      }
    },


    // エラーメッセージ出力箇所
    // errorPlacement: function(error, element){
    //   error.insertAfter(element);
    // },
    // debug: true
  });
});
})