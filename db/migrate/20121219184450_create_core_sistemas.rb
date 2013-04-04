class CreateCoreSistemas < ActiveRecord::Migration
  def change
    create_table :core_sistemas do |t|
      t.string :nome
      t.string :sigla
      t.string :apelido
      t.string :url
      t.string :controlador
      t.string :icone
      t.boolean :status
      t.integer :modulo_id

      t.timestamps
    end
  end
end
