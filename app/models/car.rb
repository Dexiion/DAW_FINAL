class Car < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  paginates_per 10
end
