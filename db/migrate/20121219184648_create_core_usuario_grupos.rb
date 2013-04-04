class CreateCoreUsuarioGrupos < ActiveRecord::Migration
  def change
    create_table :core_usuario_grupos do |t|
      t.integer :usuario_id
      t.integer :grupo_id

      t.timestamps
    end
  end
end
