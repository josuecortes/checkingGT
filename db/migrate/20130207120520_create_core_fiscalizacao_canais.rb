class CreateCoreFiscalizacaoCanais < ActiveRecord::Migration
  def change
    create_table :core_fiscalizacao_canais do |t|
      t.string :codigo
      t.string :descricao
      t.integer :usuario_id
      t.integer :usuario_alterou_id

      t.timestamps
    end
  end
end
