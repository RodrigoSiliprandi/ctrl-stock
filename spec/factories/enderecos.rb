FactoryBot.define do
  factory :endereco do
    cep { '85601050' }
    logradouro { 'Rua Rio Grande do SUl' }
    bairro { 'Alvorada' }
    complemento { '3432' }

    association :cidade, factory: :cidade
  end
end
