class AddOutrosToPasse < ActiveRecord::Migration
  def change
    add_column :transportadora_fiscal_passes, :destinatario, :string
    add_column :transportadora_fiscal_passes, :numero_nota, :string
    add_column :transportadora_fiscal_passes, :danfe, :string
    add_column :transportadora_fiscal_passes, :emissor, :string
    add_column :transportadora_fiscal_passes, :endereco, :string
    remove_column :transportadora_fiscal_passes, :data_inclusao
  end
end
