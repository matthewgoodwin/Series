class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :imdb
      t.integer :tvrage
      t.integer :thetvdb
      t.string :title
      t.string :type
      t.string :runtime
      t.string :language
      t.string :genre
      t.string :status
      t.string :premiered
      t.string :network
      t.string :poster
      t.string :backdrop
      t.string :summary

      t.timestamps null: false
    end
  end
end
