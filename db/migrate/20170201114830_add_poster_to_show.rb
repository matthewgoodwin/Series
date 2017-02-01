class AddPosterToShow < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :lgposter, :string
  end
end
