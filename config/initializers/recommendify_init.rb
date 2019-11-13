Recommendify.redis = Redis.new(host: "localhost", port: "6379")

class MyRecommender < Recommendify::Base

  max_neighbors 50

  input_matrix :order_items,
    similarity_func: :jaccard,
    weight: 5.0

end