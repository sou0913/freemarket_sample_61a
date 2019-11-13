// DOM読み込みが完了したら実行
document.addEventListener('DOMContentLoaded', (e) => {
  // payjp.jsの初期化
  Payjp.setPublicKey('pk_test_a2c13e209c813bb43fed001f');

  // ボタンのイベントハンドリング
  const btn = document.getElementById('token_submit');
  btn.addEventListener('click', (e) => {
    e.preventDefault();
    
    // カード情報生成
    const card = {
      number: document.getElementById('card_number').value,
      cvc: document.getElementById('card_cvc').value,
      exp_month: document.getElementById('card_month').value,
      exp_year: document.getElementById('card_year').value
    };
    
    // トークン生成
    Payjp.createToken(card, (status, response) => {
      if (status === 200) {
        // トークンオブジェクトを処理し、サーバーに送り返します「response.id」からトークンIDを取得できます
        $("#card_number").removeAttr("name");
        $("#card_cvc").removeAttr("name");
        $("#card_month").removeAttr("name");
        $("#card_year").removeAttr("name");
        // カード情報をPOSTせず削除します
        $("#token_submit").append(
          $('<input type="hidden" name="payjp-token">').val(response.id)
        );
        document.inputForm.submit();
          alert("登録が完了しました");
        } else {
          alert("カード情報が正しくありません");
        }
      });
    });
  }, false
);
