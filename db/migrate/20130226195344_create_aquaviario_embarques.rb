class CreateAquaviarioEmbarques < ActiveRecord::Migration
  def change
    create_table :aquaviario_embarques do |t|
      t.string :balsa
      t.string :situacao
      t.date :data_saida
      t.date :data_previsao
      t.date :data_fechou
      t.date :data_chegou
      t.integer :transportadora_id
      t.integer :porto_saida_id
      t.integer :porto_destino_id
      t.integer :usuario_id
      t.integer :usuario_fechou_id
      t.integer :usuario_chegou_id

      t.timestamps
      
    end
  end
end
