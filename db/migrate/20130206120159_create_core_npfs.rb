class CreateCoreNpfs < ActiveRecord::Migration
  def change
    create_table :core_npfs do |t|
      t.integer :pessoa_fisica_id
      t.integer :negativacao_tipo_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
