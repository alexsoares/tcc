json.array!(@interesses) do |interess|
  json.extract! interess, :id, :nome, :descricao, :user
  json.url interess_url(interess, format: :json)
end
