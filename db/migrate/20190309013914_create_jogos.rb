class CreateJogos < ActiveRecord::Migration[5.2]
  def change
    create_table :jogos do |t|
      t.string :titulo
      t.text :descricao
      t.string :desenvolvedora
      t.date :lancamento

      t.timestamps
    end
  end
end
