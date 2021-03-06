class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.integer :number
      t.integer :bottom_seats
      t.integer :top_seats
      t.integer :side_bottom_seats
      t.integer :side_top_seats
      t.integer :chair_seats
      
      t.belongs_to :train
      
      t.string :type
      
      t.timestamps null: false
    end
  end
end
