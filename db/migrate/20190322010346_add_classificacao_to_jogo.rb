class AddClassificacaoToJogo < ActiveRecord::Migration[5.2]
  def change
    add_reference :jogos, :classificacao, foreign_key: true
  end
end
