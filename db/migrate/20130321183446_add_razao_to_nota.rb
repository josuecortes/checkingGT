class AddRazaoToNota < ActiveRecord::Migration
  def change
    add_column :core_notas, :razao_social_origem, :string
  end
end
