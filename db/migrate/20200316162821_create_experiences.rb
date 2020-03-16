class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :location
      t.string :date_choices
      t.string :photo
      t.integer :max_participants
      t.float :price

      t.timestamps
    end
  end
end
