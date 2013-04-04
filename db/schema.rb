# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130321183446) do

  create_table "aquaviario_documentos", :force => true do |t|
    t.string   "documento"
    t.string   "tipo"
    t.integer  "embarque_id",               :precision => 38, :scale => 0
    t.integer  "transportadora_destino_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.integer  "unidade_carga_id",          :precision => 38, :scale => 0
    t.string   "placa_unidade"
    t.decimal  "peso"
    t.decimal  "valor"
  end

  create_table "aquaviario_embarques", :force => true do |t|
    t.string   "balsa"
    t.string   "situacao"
    t.datetime "data_saida"
    t.datetime "data_previsao"
    t.datetime "data_fechou"
    t.datetime "data_chegou"
    t.integer  "transportadora_id", :precision => 38, :scale => 0
    t.integer  "porto_saida_id",    :precision => 38, :scale => 0
    t.integer  "porto_destino_id",  :precision => 38, :scale => 0
    t.integer  "usuario_id",        :precision => 38, :scale => 0
    t.integer  "usuario_fechou_id", :precision => 38, :scale => 0
    t.integer  "usuario_chegou_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "aquaviario_portos", :force => true do |t|
    t.string   "nome"
    t.decimal  "calado"
    t.decimal  "capacidade"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.integer  "transportadora_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "core_embarque_notas", :force => true do |t|
    t.integer  "embarque_id",       :precision => 38, :scale => 0
    t.integer  "nota_id",           :precision => 38, :scale => 0
    t.integer  "transportadora_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "core_fiscalizacao_canais", :force => true do |t|
    t.string   "codigo"
    t.string   "descricao"
    t.integer  "usuario_id",         :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "core_fiscalizacao_regras", :force => true do |t|
    t.string   "codigo"
    t.string   "descricao"
    t.text     "legislacao"
    t.text     "orientacao"
    t.integer  "fiscalizacao_canal_id", :precision => 38, :scale => 0
    t.integer  "negativacao_tipo_id",   :precision => 38, :scale => 0
    t.integer  "usuario_id",            :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id",    :precision => 38, :scale => 0
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "core_grupo_sistemas", :force => true do |t|
    t.integer  "grupo_id",   :precision => 38, :scale => 0
    t.integer  "sistema_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "core_grupos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.boolean  "status",            :precision => 1,  :scale => 0
    t.integer  "transportadora_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "core_liberar_notas", :force => true do |t|
    t.integer  "nota_retida_id",           :precision => 38, :scale => 0
    t.integer  "fiscalizacao_regra_id",    :precision => 38, :scale => 0
    t.string   "evento_liberacao"
    t.datetime "datahora_liberacao"
    t.string   "motivo_liberacao"
    t.text     "descricao_liberacao"
    t.string   "arrecadacao_codigo"
    t.decimal  "valor_principal"
    t.decimal  "valor_multa"
    t.decimal  "valor_correcao_monetaria"
    t.decimal  "valor_juros"
    t.decimal  "valor_total"
    t.datetime "data_inclusao"
    t.integer  "usuario_id",               :precision => 38, :scale => 0
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
  end

  create_table "core_modulos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.boolean  "status",     :precision => 1, :scale => 0
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "core_negativacao_tipos", :force => true do |t|
    t.string   "codigo"
    t.string   "descricao"
    t.integer  "usuario_id",         :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "core_nota_liberadas", :force => true do |t|
    t.integer  "nota_id",                  :precision => 38, :scale => 0
    t.datetime "datahora_liberacao"
    t.integer  "fiscal_passe_id",          :precision => 38, :scale => 0
    t.decimal  "valor_principal"
    t.decimal  "valor_multa"
    t.decimal  "valor_correcao_monetaria"
    t.decimal  "valor_juros"
    t.decimal  "valor_total"
    t.datetime "data_entrada"
    t.datetime "data_vencimento"
    t.datetime "data_pagamento"
    t.datetime "data_inclusao"
    t.integer  "usuario_id",               :precision => 38, :scale => 0
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
  end

  create_table "core_nota_retidas", :force => true do |t|
    t.integer  "nota_id",                  :precision => 38, :scale => 0
    t.integer  "fiscalizacao_regra_id",    :precision => 38, :scale => 0
    t.datetime "datahora_fiscalizacao"
    t.decimal  "valor_principal"
    t.decimal  "valor_multa"
    t.decimal  "valor_correcao_monetaria"
    t.decimal  "valor_juros"
    t.decimal  "valor_total"
    t.datetime "data_entrada"
    t.datetime "data_vencimento"
    t.datetime "data_pagamento"
    t.datetime "data_inclusao"
    t.integer  "usuario_id",               :precision => 38, :scale => 0
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
  end

  create_table "core_notas", :force => true do |t|
    t.string   "codigo"
    t.string   "cnpj_origem"
    t.string   "cnpj_destino"
    t.string   "cpf_destino"
    t.string   "uf_origem"
    t.string   "uf_destino"
    t.datetime "data_emissao"
    t.datetime "data_entrada"
    t.decimal  "valor_produtos"
    t.decimal  "valor_total"
    t.string   "numero_pin_suframa"
    t.decimal  "valor_st"
    t.decimal  "valor_icms"
    t.decimal  "valor_bc_st"
    t.decimal  "valor_bc_icms"
    t.string   "numero_nota"
    t.integer  "qtd_itens_nfe",             :precision => 38, :scale => 0
    t.integer  "usuario_id",                :precision => 38, :scale => 0
    t.string   "situacao"
    t.integer  "embarque_id",               :precision => 38, :scale => 0
    t.integer  "transportadora_id",         :precision => 38, :scale => 0
    t.integer  "transportadora_destino_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.string   "razao_social_destino"
    t.string   "nome_destino"
    t.string   "endereco_destino"
    t.integer  "numero_destino",            :precision => 38, :scale => 0
    t.integer  "bairro_destino",            :precision => 38, :scale => 0
    t.string   "ie_destino"
    t.string   "razao_social_origem"
  end

  create_table "core_npfs", :force => true do |t|
    t.integer  "pessoa_fisica_id",    :precision => 38, :scale => 0
    t.integer  "negativacao_tipo_id", :precision => 38, :scale => 0
    t.integer  "usuario_id",          :precision => 38, :scale => 0
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "core_npjs", :force => true do |t|
    t.integer  "pessoa_juridica_id",  :precision => 38, :scale => 0
    t.integer  "negativacao_tipo_id", :precision => 38, :scale => 0
    t.integer  "usuario_id",          :precision => 38, :scale => 0
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "core_pessoa_fisicas", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.text     "observacoes"
    t.integer  "usuario_id",         :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "core_pessoa_juridicas", :force => true do |t|
    t.string   "cnpj"
    t.string   "razaosocial"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.text     "observacoes"
    t.integer  "usuario_id",         :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "core_senhas", :force => true do |t|
    t.integer  "usuario_id",         :precision => 38, :scale => 0
    t.string   "senha_encriptada"
    t.string   "chave_criptografia"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "core_sistemas", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.string   "apelido"
    t.string   "url"
    t.string   "controlador"
    t.string   "icone"
    t.boolean  "status",      :precision => 1,  :scale => 0
    t.integer  "modulo_id",   :precision => 38, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "core_transportadoras", :force => true do |t|
    t.string   "cnpj"
    t.string   "inscricaoestadual"
    t.string   "nomefantasia"
    t.string   "razaosocial"
    t.string   "endereco"
    t.string   "estado"
    t.string   "cidade"
    t.string   "bairro"
    t.string   "cep"
    t.string   "email"
    t.string   "telefone"
    t.string   "fax"
    t.string   "tipo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "core_unidade_cargas", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_usuario_grupos", :force => true do |t|
    t.integer  "usuario_id", :precision => 38, :scale => 0
    t.integer  "grupo_id",   :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "core_usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "email"
    t.boolean  "status",            :precision => 1,  :scale => 0, :default => true
    t.boolean  "mudarsenha",        :precision => 1,  :scale => 0, :default => true
    t.integer  "numlogin",          :precision => 38, :scale => 0
    t.datetime "ultimadataacesso"
    t.datetime "correntedatalogin"
    t.datetime "ultimadatalogin"
    t.string   "correnteloginip"
    t.string   "ultimologinip"
    t.integer  "transportadora_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
  end

  create_table "transportadora_estoques", :force => true do |t|
    t.integer  "embarque_id",       :precision => 38, :scale => 0
    t.integer  "nota_id",           :precision => 38, :scale => 0
    t.integer  "transportadora_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "transportadora_fiscal_passes", :force => true do |t|
    t.integer  "nota_id",          :precision => 38, :scale => 0
    t.datetime "datahora_emissao"
    t.integer  "usuario_id",       :precision => 38, :scale => 0
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "destinatario"
    t.string   "numero_nota"
    t.string   "danfe"
    t.string   "emissor"
    t.string   "endereco"
  end

end
