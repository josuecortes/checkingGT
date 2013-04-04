class CreateCorePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :core_pessoa_fisicas do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.text :observacoes
      t.integer :usuario_id
      t.integer :usuario_alterou_id

      t.timestamps
    end
  end
end
