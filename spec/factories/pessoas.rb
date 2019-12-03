FactoryBot.define do
  factory :pessoa do
    nome { 'Eduardo' }
    documento { '05383177957' }
    tipo { 1 }

    association :endereco, factory: :endereco
  end
end
