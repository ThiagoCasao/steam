class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.date :nascimento

      t.timestamps
    end
  end
end
