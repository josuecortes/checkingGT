class CreateCorePessoaJuridicas < ActiveRecord::Migration
  def change
    create_table :core_pessoa_juridicas do |t|
      t.string :cnpj
      t.string :razaosocial
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
