class CreateTransportadoraFiscalPasses < ActiveRecord::Migration
  def change
    create_table :transportadora_fiscal_passes do |t|
      t.integer :nota_id
      t.datetime :datahora_emissao
      t.datetime :data_inclusao
      t.integer :usuario_id

      t.timestamps
    end
  end
end
