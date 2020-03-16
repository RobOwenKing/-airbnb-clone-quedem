class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :experience, foreign_key: true
      t.integer :participants_no
      t.string :confirmed
      t.datetime :date

      t.timestamps
    end
  end
end
