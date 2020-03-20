class ChangeReferencesInReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :user_id
    remove_column :reviews, :experience_id
    add_reference :reviews, :booking
  end
end
