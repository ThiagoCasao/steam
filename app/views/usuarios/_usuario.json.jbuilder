json.extract! usuario, :id, :nome, :email, :nascimento, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
