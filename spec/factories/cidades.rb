FactoryBot.define do
  factory :cidade do
    nome { 'Eduardo' }

    association :estado, factory: :estado
  end
end
