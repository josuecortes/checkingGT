class CreateAquaviarioPortos < ActiveRecord::Migration
  def change
    create_table :aquaviario_portos do |t|
      t.string :nome
      t.float :calado
      t.float :capacidade
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :fax
      t.string :email
      t.integer :transportadora_id

      t.timestamps
    end
  end
end
