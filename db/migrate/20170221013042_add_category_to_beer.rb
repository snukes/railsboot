class AddCategoryToBeer < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :category, :string
  end
end
