class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user_show, foreign_key: true
      t.string :phrase
      t.integer :rating
      t.string :standout

      t.timestamps
    end
  end
end
