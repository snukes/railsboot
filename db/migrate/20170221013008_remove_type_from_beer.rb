class RemoveTypeFromBeer < ActiveRecord::Migration[5.0]
  def change
    remove_column :beers, :type, :string
  end
end
