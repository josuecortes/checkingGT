class CreateAquaviarioDocumentos < ActiveRecord::Migration
  def change
    create_table :aquaviario_documentos do |t|
      t.string :documento
      t.string :tipo
      t.integer :embarque_id
      t.integer :transportadora_destino_id

      t.timestamps
    end
  end
end
