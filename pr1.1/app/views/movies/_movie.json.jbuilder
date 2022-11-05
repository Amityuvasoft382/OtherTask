json.extract! movie, :id, :title, :gen, :year, :price, :created_at, :updated_at
json.url movie_url(movie, format: :json)
