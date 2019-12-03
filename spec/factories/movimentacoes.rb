FactoryBot.define do
  factory :mov_venda do
    quantidade { 4 }
    data { '2019-11-24' }

    association :pessoa, factory: :pessoa
    association :produto, factory: :produto
    association :operacao, factory: :operacao
  end

  factory :mov_compra do
    quantidade { 4 }
    data { '2019-11-24' }

    association :pessoa, factory: :pessoa
    association :produto, factory: :produto
    association :operacao, factory: :operacao
  end

  factory :mov_devolucao_venda do
    quantidade { 4 }
    data { '2019-11-24' }

    association :pessoa, factory: :pessoa
    association :produto, factory: :produto
    association :operacao, factory: :operacao
  end

  factory :mov_devolucao_compra do
    quantidade { 4 }
    data { '2019-11-24' }

    association :pessoa, factory: :pessoa
    association :produto, factory: :produto
    association :operacao, factory: :operacao
  end
end
