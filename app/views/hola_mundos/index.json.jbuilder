json.array!(@hola_mundos) do |hola_mundo|
  json.extract! hola_mundo, :id, :nombre, :endad
  json.url hola_mundo_url(hola_mundo, format: :json)
end
