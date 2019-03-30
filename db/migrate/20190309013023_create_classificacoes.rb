class CreateClassificacoes < ActiveRecord::Migration[5.2]
  def change
    create_table :classificacoes do |t|
      t.string :nome
      t.integer :idade_minima

      t.timestamps
    end
  end
end
