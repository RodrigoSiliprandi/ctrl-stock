json.extract! endereco, :id, :cidade_id, :cep, :logradouro, :bairro, :complemento, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
