json.extract! operacao, :id, :descricao, :tipo, :created_at, :updated_at
json.url operacao_url(operacao, format: :json)
