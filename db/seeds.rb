agent = Mechanize.new
page = agent.get("https://www.mercari.com/jp/category/")
for 10
element = page.search('h3')
element.inner_text
 
elements = page.search('h4')
element.inner_text
elements = page.search('html body div div div div div div div div p')
element.inner_text


Category.create(
  name:"レディース", 
  text:"レディースの着ない服、いらない洋服を売るならメルカリへ。レディースの商品は100万点以上あります。人気のあるカテゴリーはその他とひざ丈スカートです。人気の商品は「ブラックフォーマル スーツ ワンピース（トールサイズ）」や「マーキュリーディオ花柄スカート Ｆ 新品」があります。レディースの買い取りやリサイクル処分、服の整理を検討中の方にお勧めです。",
  parent_id: 0
)
Category.create(
  name:"メンズ", 
  text:"メンズの着ない服、いらない洋服を売るならメルカリへ。メンズの商品は100万点以上あります。人気のあるカテゴリーはフライトジャケットとシャツです。人気の商品は「A様 専用」や「総柄シャツ(黒×白)」があります。メンズの買い取りやリサイクル処分、服の整理を検討中の方にお勧めです。",
  parent_id: 0
)
Category.create(
  name:"ベビー・キッズ",
  text:"ベビー・キッズの買取、処分ならメルカリへ。ベビー・キッズの商品は100万点以上あります。人気のあるカテゴリーはワンピースとワンピースです。人気の商品は「週末限定お値下げ　親子お揃い　スカート(M)&ワンピース110」や「jacadi ジャカディ ポロワンピース 4ans 104cm ネイビー」があります。ベビー・キッズの買い取りやリサイクル、子供服の整理を検討中の方にお勧めです。",
  parent_id: 0
)
Category.create(
  name:"インテリア・住まい・小物",
  text:"インテリア・住まい・小物の処分、買取ならメルカリへ。インテリア・住まい・小物の商品は100万点以上あります。人気のあるカテゴリーはその他とフォトフレームです。人気の商品は「日向坂46 CoCo壱コラボ」や「【未開封】IKEA フォトフレーム ホワイト RIBBA」があります。インテリア・住まい・小物のリサイクルや売ることを検討中の方にお勧めです。",
  parent_id: 0
)
Category.create{

}
