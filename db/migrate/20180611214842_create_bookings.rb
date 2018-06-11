class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :client, foreign_key: true
      t.references :room, foreign_key: true
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
