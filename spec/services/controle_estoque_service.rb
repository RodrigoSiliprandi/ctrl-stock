require 'rails_helper'

RSpec.describe ControleEstoqueService, type: :model do
  context 'ao movimentar' do
    let(:pessoa) { FactoryBot.create(:pessoa, endereco: endereco) }
    let(:grupo_produto) { FactoryBot.create(:grupo_produto) }
    let(:unidade) { FactoryBot.create(:unidade) }
    let(:produto) {
      FactoryBot.create(:produto,
                        grupo_produto: grupo_produto,
                        unidade: unidade)
    }

    context 'uma compra' do
      let(:mov_compra) { FactoryBot.create(:mov_compra) }
      let(:compra) {
        ControleEstoqueService.comprar(FactoryBot.create(:movimentacao,
                                                         operacao: mov_compra))
      }
      it 'instancia movimentação' do
        expect(compra).to be_an_instance_of(Movimentacao)
      end
      it 'deve salvar a movimentação' do
        expect(compra.persisted?).to be true
      end
    end

    context 'venda com estoque negativo' do
      let(:mov_compra) { FactoryBot.create(:mov_compra) }
      let(:compra) {
        ControleEstoqueService.comprar(FactoryBot.create(:movimentacao,
                                                         operacao: mov_compra))
      }

      let(:mov_venda) { FactoryBot.create(:mov_venda) }
      let(:venda) {
        ControleEstoqueService.vender(FactoryBot.create(:movimentacao,
                                                        operacao: mov_venda))
      }

      it 'Deve validar' do
        expect {
          ControleEstoqueService.new(rdata, operacao, quantidade).movimentar
        }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Não é possível realizar a operação pois o estoque é negativo'))
      end
    end
  end
end
