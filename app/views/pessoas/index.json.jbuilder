json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :idade, :endereco, :user_id
  json.url pessoa_url(pessoa, format: :json)
end
