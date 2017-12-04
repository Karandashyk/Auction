class User < ApplicationRecord

  belongs_to :money

  has_many :users_products
  has_many :products, through: :users_products

end
