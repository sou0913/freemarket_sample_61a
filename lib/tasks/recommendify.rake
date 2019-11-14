namespace :recommendify do
  desc "関連性の取得"
  task :get_relatedness do
    recommender = MyRecommender.new
    user.purchases.each do |purchase|
      purchase.item_id
    recommender.order_items.add_set("#{user}", categories)
  end
end
