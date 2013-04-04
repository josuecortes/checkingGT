class AddOutrosToNota < ActiveRecord::Migration
  def change
    add_column :core_notas, :razao_social_destino, :string
    add_column :core_notas, :nome_destino, :string
    add_column :core_notas, :endereco_destino, :string
    add_column :core_notas, :numero_destino, :integer
    add_column :core_notas, :bairro_destino, :integer
    add_column :core_notas, :ie_destino, :string
  end
end
