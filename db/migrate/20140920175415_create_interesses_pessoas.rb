class CreateInteressesPessoas < ActiveRecord::Migration
  def change
    create_table :interesses_pessoas do |t|
      t.belongs_to :pessoa
      t.belongs_to :interess
    end
  end
end
