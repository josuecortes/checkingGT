class CreateCoreModulos < ActiveRecord::Migration
  def change
    create_table :core_modulos do |t|
      t.string :nome
      t.string :sigla
      t.boolean :status

      t.timestamps
    end
  end
end
