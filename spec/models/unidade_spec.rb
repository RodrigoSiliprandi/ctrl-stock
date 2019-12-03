require 'rails_helper'

RSpec.describe Unidade, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:sigla) }
    it { should validate_presence_of(:descricao) }
    it { should validate_uniqueness_of(:sigla) }
  end
end
