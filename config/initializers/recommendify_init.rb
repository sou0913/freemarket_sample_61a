uri = URI.parse(ENV['REDIS'])
Recommendify.redis = Redis.new(host: "recommend.1zgi2i.ng.0001.apne1.cache.amazonaws.com", port: 6379)

class MyRecommender < Recommendify::Base

  max_neighbors 50

  input_matrix :order_items,
    similarity_func: :jaccard,
    weight: 5.0

end