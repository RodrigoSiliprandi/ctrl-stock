require "rails_helper"

RSpec.describe Endereco, type: :model do
  context 'Validações gerais' do
    it { should belong_to(:cidade) }

    it { should validate_presence_of(:cep) }
    it { should validate_presence_of(:logradouro) }
    it { should validate_presence_of(:bairro) }
    it { should validate_presence_of(:complemento) }
  end
end
