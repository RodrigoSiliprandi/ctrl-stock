FactoryBot.define do
  factory :produto do
    nome { 'Tilápia' }

    association :unidade, factory: :unidade
    association :grupo_produto, factory: :grupo_produto
  end
end
