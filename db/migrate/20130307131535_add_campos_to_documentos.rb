class AddCamposToDocumentos < ActiveRecord::Migration
  def change
    add_column :aquaviario_documentos, :unidade_carga_id, :integer
    add_column :aquaviario_documentos, :placa_unidade, :string
    add_column :aquaviario_documentos, :peso, :float
    add_column :aquaviario_documentos, :valor, :float
  end
end
