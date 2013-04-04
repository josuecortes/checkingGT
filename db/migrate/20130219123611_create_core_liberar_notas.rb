class CreateCoreLiberarNotas < ActiveRecord::Migration
  def change
    create_table :core_liberar_notas do |t|
      t.integer :nota_retida_id
      t.integer :fiscalizacao_regra_id
      t.string :evento_liberacao
      t.datetime :datahora_liberacao
      t.string :motivo_liberacao
      t.text :descricao_liberacao
      t.string :arrecadacao_codigo
      t.float :valor_principal
      t.float :valor_multa
      t.float :valor_correcao_monetaria
      t.float :valor_juros
      t.float :valor_total
      t.datetime :data_inclusao
      t.integer :usuario_id

      t.timestamps
    end
  end
end
