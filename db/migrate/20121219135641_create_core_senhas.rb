class CreateCoreSenhas < ActiveRecord::Migration
  def change
    create_table :core_senhas do |t|
      t.integer :usuario_id
      t.string :senha_encriptada
      t.string :chave_criptografia

      t.timestamps
    end

  end
end
