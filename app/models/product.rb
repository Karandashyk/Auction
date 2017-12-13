class Product < ApplicationRecord

  belongs_to :location, optional: true
  has_many :users_products
  has_many :users, through: :users_products
  
  scope :mode, -> (mode) { where(mode: mode) }
  
  scope :category, -> (category) { where(category: category) }
  
  scope :location, -> (location) { where(location: location) }
  
  scope :price, -> (price) { where(price: price) }

end
