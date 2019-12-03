json.extract! movimentacao, :id, :quantidade, :pessoa_id, :operacao_id, :produto_id, :data, :created_at, :updated_at
json.url movimentacao_url(movimentacao, format: :json)
