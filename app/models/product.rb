class Product < ApplicationRecord

  belongs_to :location
  has_many :users_products
  has_many :users, through: :users_products

end
