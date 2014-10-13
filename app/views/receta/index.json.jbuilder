json.array!(@receta) do |recetum|
  json.extract! recetum, :id, :nombre, :preparacion, :ingredientes
  json.url recetum_url(recetum, format: :json)
end
