class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
