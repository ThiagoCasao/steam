json.extract! classificacao, :id, :nome, :idade_minima, :created_at, :updated_at
json.url classificacao_url(classificacao, format: :json)
