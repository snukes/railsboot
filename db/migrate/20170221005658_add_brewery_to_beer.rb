class AddBreweryToBeer < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :brewery, :text
  end
end
