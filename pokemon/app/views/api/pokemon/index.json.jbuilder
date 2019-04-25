@pokemon.each do |onemon|
  json.set! onemon.id do
    json.extract! onemon, :id, :name
    json.image_url asset_path(onemon.image_url)
  end
end