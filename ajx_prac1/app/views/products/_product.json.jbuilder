json.extract! product, :id, :c_name, :p_name, :p_type, :price, :qty, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
