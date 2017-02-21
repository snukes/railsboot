class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :desc
      t.decimal :abv
      t.string :type

      t.timestamps
    end
  end
end
