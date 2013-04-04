class CreateCoreUnidadeCargas < ActiveRecord::Migration
  def change
    create_table :core_unidade_cargas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
