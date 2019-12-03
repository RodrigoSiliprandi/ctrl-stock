require 'rails_helper'

RSpec.describe Produto, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:nome) }
    it { should validate_uniqueness_of(:nome) }
  end
end
