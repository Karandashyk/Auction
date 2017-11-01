json.extract! user, :id, :nickname, :email, :password, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
