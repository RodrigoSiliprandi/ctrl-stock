require 'rails_helper'

RSpec.describe Pessoa, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:documento) }
    it { should validate_presence_of(:tipo) }
    it { is_expected.to allow_values('cliente', 'fornecedor').for(:tipo) }
    it { should define_enum_for(:tipo) }
  end
end
