class CreateInteresses < ActiveRecord::Migration
  def change
    create_table :interesses do |t|
      t.string :nome
      t.text :descricao
      t.integer :user_id

      t.timestamps
    end
  end
end
