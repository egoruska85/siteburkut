class Comment < ApplicationRecord
  belongs_to :product
  has_one_attached :image
  has_many_attached :images  
end
