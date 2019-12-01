# メルカリのクローンサイトの作成

## 概要
TECH::EXPERTの最終課題にて取り組みました。4人チームを組み、4週間の作業期間が与えられました。

## 動作環境
ruby 2.5.1  
rails 5.2.3

## 使用技術
カリキュラムで主に学んできたRuby on Railsを用いました。
マークアップにはHaml、Sass、jQueryを使用しました。

## 機能について

自身が実装した部分を中心に紹介いたします。

<br>

1. DB設計はチームメンバー全員の意見を取り入れました。詳細は<a href="/DATABASE.md">こちら</a>(DATABASE.md)になります。

<br>

2. 画像などを選択し、商品を出品できます。  
  
<a href="https://gyazo.com/33a56f31c9622b4dbdee51716a721a0e"><img src="https://i.gyazo.com/33a56f31c9622b4dbdee51716a721a0e.gif" alt="Image from Gyazo" width="400"/></a>  

<br>

3. 商品の編集、削除などができます。  

<a href="https://gyazo.com/00128d8976d3fc5c06313956009f92c9"><img src="https://i.gyazo.com/00128d8976d3fc5c06313956009f92c9.gif" alt="Image from Gyazo" width="400"/></a>  

<br>

4. 商品の検索ができます。  
  
<a href="https://gyazo.com/0c8f5afe611cafb365022490c4933f61"><img src="https://i.gyazo.com/0c8f5afe611cafb365022490c4933f61.gif" alt="Image from Gyazo" width="400"/></a>  

<br>

5. 会員登録時に入力したカード情報(サンプル)で商品の購入ができます。  

<a href="https://gyazo.com/be3ad61011e769f07bc64bdf955225e8"><img src="https://i.gyazo.com/be3ad61011e769f07bc64bdf955225e8.gif" alt="Image from Gyazo" width="400"/></a>  

<br>

6. 商品はカテゴリーごとに分類されます。関連カテゴリーは非同期通信で取得され、このようにブラウザに表示されます。  

<a href="https://gyazo.com/5e5a4526f58fbfe39800d9fd63ca7889"><img src="https://i.gyazo.com/5e5a4526f58fbfe39800d9fd63ca7889.gif" alt="Image from Gyazo" width="400"/></a>

<br>

7. デプロイを担当しました。AWSのVPC内に、EC2、S3を用いて環境を構築しました。

<a href="https://gyazo.com/e63868fab767f152b1f43700b582b063"><img src="https://i.gyazo.com/e63868fab767f152b1f43700b582b063.gif" alt="Image from Gyazo" width="400"/></a>  

<br>

8. オリジナル機能として、リコメンド機能を実装しました。  
全てのユーザーの購入履歴から、商品のカテゴリーごとの関連性を算出し、関連性の高いカテゴリーを積極的に表示するというものです。  

<a href="https://gyazo.com/c676d05fd4cf7cc1555c17f38ddc11a1"><img src="https://i.gyazo.com/c676d05fd4cf7cc1555c17f38ddc11a1.gif" alt="Image from Gyazo" width="400"/></a>  

<a href="https://gyazo.com/818c27551a249cf5ce389a8263f545ff"><img src="https://i.gyazo.com/818c27551a249cf5ce389a8263f545ff.gif" alt="Image from Gyazo" width="400"/></a>  

<br>

## 私が担当した箇所の詳細
<a href="https://docs.google.com/document/d/1_NTvcikXDGVj3NlP71i_L6sNUZB-nVwdx5O7FrK_3vU/edit?usp=sharing">
こちら
</a>
のGoogleDocumentに詳細がございます。

