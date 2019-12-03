json.extract! produto, :id, :nome, :unidade_id, :grupo_produto_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)
