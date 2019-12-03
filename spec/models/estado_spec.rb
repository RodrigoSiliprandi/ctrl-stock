require 'rails_helper'

RSpec.describe Estado, type: :model do
  context 'Validações gerais' do
    it { should validate_presence_of(:uf) }
    it { should validate_length_of(:uf).is_at_most(2) }
    it { should validate_uniqueness_of(:uf) }
  end
end
