class CreateCoreNegativacaoTipos < ActiveRecord::Migration
  def change
    create_table :core_negativacao_tipos do |t|
      t.string :codigo
      t.string :descricao
      t.integer :usuario_id
      t.integer :usuario_alterou_id

      t.timestamps
    end
  end
end
