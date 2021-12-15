class User < ApplicationRecord
  has_secure_password
  has_many :cars, dependent: :destroy
  has_one_attached :image
end
