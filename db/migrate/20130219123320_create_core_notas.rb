class CreateCoreNotas < ActiveRecord::Migration
  def change
    create_table :core_notas do |t|
      t.string :codigo
      t.string :cnpj_origem
      t.string :cnpj_destino
      t.string :cpf_destino
      t.string :uf_origem
      t.string :uf_destino
      t.datetime :data_emissao
      t.datetime :data_entrada
      t.float :valor_produtos
      t.float :valor_total
      t.string :numero_pin_suframa
      t.float :valor_st
      t.float :valor_icms
      t.float :valor_bc_st
      t.float :valor_icms
      t.float :valor_bc_st
      t.float :valor_bc_icms
      t.string :numero_nota
      t.integer :qtd_itens_nfe
      t.integer :usuario_id
      t.string :situacao
      t.integer :embarque_id
      t.integer :transportadora_id
      t.integer :transportadora_destino_id
      t.string :numero_destino
     
      t.timestamps
    end
  end
end
