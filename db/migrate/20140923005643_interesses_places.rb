class InteressesPlaces < ActiveRecord::Migration
  def change
    create_table :interesses_places do |t|
      t.belongs_to :place
      t.belongs_to :interess
    end    
  end
end
