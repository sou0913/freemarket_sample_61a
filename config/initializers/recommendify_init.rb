require 'redis'

uri = URI.parse(ENV['REDIS'])
Recommendify.redis = Redis.new(host: uri.host, port: uri.port)

class MyRecommender < Recommendify::Base

  max_neighbors 50

  input_matrix :order_items,
    similarity_func: :jaccard,
    weight: 5.0

end