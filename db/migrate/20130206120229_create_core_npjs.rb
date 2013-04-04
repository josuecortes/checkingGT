class CreateCoreNpjs < ActiveRecord::Migration
  def change
    create_table :core_npjs do |t|
      t.integer :pessoa_juridica_id
      t.integer :negativacao_tipo_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
