json.extract! product, :id, :Pname, :price, :stripe_id, :created_at, :updated_at
json.url product_url(product, format: :json)
