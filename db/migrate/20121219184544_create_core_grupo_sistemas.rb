class CreateCoreGrupoSistemas < ActiveRecord::Migration
  def change
    create_table :core_grupo_sistemas do |t|
      t.integer :grupo_id
      t.integer :sistema_id

      t.timestamps
    end
  end
end
