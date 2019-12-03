# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_25_002611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'cidades', force: :cascade do |t|
    t.bigint 'estado_id'
    t.string 'nome'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['estado_id'], name: 'index_cidades_on_estado_id'
  end

  create_table 'enderecos', force: :cascade do |t|
    t.bigint 'cidade_id'
    t.string 'cep'
    t.string 'logradouro'
    t.string 'bairro'
    t.string 'complemento'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['cidade_id'], name: 'index_enderecos_on_cidade_id'
  end

  create_table 'estados', force: :cascade do |t|
    t.string 'uf'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'grupo_produtos', force: :cascade do |t|
    t.string 'nome'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'movimentacaos', force: :cascade do |t|
    t.integer 'quantidade'
    t.bigint 'pessoa_id'
    t.bigint 'operacao_id'
    t.bigint 'produto_id'
    t.date 'data'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['operacao_id'], name: 'index_movimentacaos_on_operacao_id'
    t.index ['pessoa_id'], name: 'index_movimentacaos_on_pessoa_id'
    t.index ['produto_id'], name: 'index_movimentacaos_on_produto_id'
  end

  create_table 'operacaos', force: :cascade do |t|
    t.string 'descricao'
    t.integer 'tipo'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'pessoas', force: :cascade do |t|
    t.string 'nome'
    t.string 'documento'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'endereco_id'
    t.integer 'tipo'
    t.index ['endereco_id'], name: 'index_pessoas_on_endereco_id'
  end

  create_table 'produtos', force: :cascade do |t|
    t.string 'nome'
    t.bigint 'unidade_id'
    t.bigint 'grupo_produto_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['grupo_produto_id'], name: 'index_produtos_on_grupo_produto_id'
    t.index ['unidade_id'], name: 'index_produtos_on_unidade_id'
  end

  create_table 'unidades', force: :cascade do |t|
    t.string 'descricao'
    t.string 'sigla'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'cidades', 'estados'
  add_foreign_key 'enderecos', 'cidades'
  add_foreign_key 'movimentacaos', 'operacaos'
  add_foreign_key 'movimentacaos', 'pessoas'
  add_foreign_key 'movimentacaos', 'produtos'
  add_foreign_key 'pessoas', 'enderecos'
  add_foreign_key 'produtos', 'grupo_produtos'
  add_foreign_key 'produtos', 'unidades'
end
