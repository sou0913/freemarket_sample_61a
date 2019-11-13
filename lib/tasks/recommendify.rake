namespace :recommendify do
  desc "関連性の取得"
  task :get_relatedness do
    recommender = MyRecommender.new
  end
end
