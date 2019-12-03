require 'rails_helper'

RSpec.describe Cidade, type: :model do
  context 'validações gerais' do
    it { should belong_to(:estado) }
    it { should validate_presence_of(:nome) }
  end
end
