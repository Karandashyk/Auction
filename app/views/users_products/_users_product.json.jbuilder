json.extract! users_product, :id, :user_id, :product_id, :created_at, :updated_at
json.url users_product_url(users_product, format: :json)
