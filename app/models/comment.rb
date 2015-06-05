class Comment < ActiveRecord::Base
  belangs_to :post
end
