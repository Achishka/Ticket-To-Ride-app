class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :place_number
      t.integer :carrige_number
      t.string :last_station
      t.string :first_station

      t.references :train, index: true

      t.timestamps
    end
  end
end
