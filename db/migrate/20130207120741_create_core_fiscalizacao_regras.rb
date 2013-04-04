class CreateCoreFiscalizacaoRegras < ActiveRecord::Migration
  def change
    create_table :core_fiscalizacao_regras do |t|
      t.string :codigo
      t.string :descricao
      t.text :legislacao
      t.text :orientacao
      t.integer :fiscalizacao_canal_id
      t.integer :negativacao_tipo_id
      t.integer :usuario_id
      t.integer :usuario_alterou_id

      t.timestamps
    end
  end
end
