json.extract! music, :id, :name, :singers, :price, :release_year, :created_at, :updated_at
json.url music_url(music, format: :json)
