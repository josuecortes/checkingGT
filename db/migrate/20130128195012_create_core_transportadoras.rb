class CreateCoreTransportadoras < ActiveRecord::Migration
  def change
    create_table :core_transportadoras do |t|
      t.string :cnpj
      t.string :inscricaoestadual
      t.string :nomefantasia
      t.string :razaosocial
      t.string :endereco
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :cep
      t.string :email
      t.string :telefone
      t.string :fax
      t.string :tipo

      t.timestamps
    end
  end
end
