class CreateCoreUsuarios < ActiveRecord::Migration
  def change
    create_table :core_usuarios do |t|
      t.string :nome
      t.string :login
      t.string :email
      t.boolean :status, :default=>true
      t.boolean :mudarsenha, :default=>true

      t.integer :numlogin
      t.datetime :ultimadataacesso
      t.datetime :correntedatalogin
      t.datetime :ultimadatalogin
      t.string :correnteloginip
      t.string :ultimologinip

      t.integer :transportadora_id

      t.timestamps
    end

  end
end
