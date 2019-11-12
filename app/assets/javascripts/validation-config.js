$(function(){
  //フォーム指定
  $('#form').validate({

    //検証ルール設定
    rules: {
      "user[nickname]": {
        required: true
      },
      "user[email]": {
        required: true
      },
      "user[password]": {
        required: true
      },
      "user[password_confirmation]": {
        required: true
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
        required: true
      },
      "user[postal_code]": {
        required: true
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
        required: 'メールアドレスを入力してください'
      },
      "user[password]": {
        required: 'パスワードを入力してください'
      },
      "user[password_confirmation]": {
        required: 'パスワードを入力してください'
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
        required: '電話番号を入力してください'
      },
      "user[postal_code]": {
        required: '郵便番号を入力してください'
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

    //電話番号

    //エラーメッセージ出力箇所
    // errorPlacement: function(error, element){
    //   error.insertAfter(element);
    // },
    // debug: true
  });
});