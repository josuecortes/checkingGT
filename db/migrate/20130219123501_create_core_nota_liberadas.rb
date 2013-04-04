class CreateCoreNotaLiberadas < ActiveRecord::Migration
  def change
    create_table :core_nota_liberadas do |t|
      t.integer :nota_id
      t.datetime :datahora_liberacao
      t.integer :fiscal_passe_id
      t.float :valor_principal
      t.float :valor_multa
      t.float :valor_correcao_monetaria
      t.float :valor_juros
      t.float :valor_total
      t.datetime :data_entrada
      t.datetime :data_vencimento
      t.datetime :data_pagamento
      t.datetime :data_inclusao
      t.integer :usuario_id

      t.timestamps
    end
  end
end
