class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :location
      t.text :description
      t.string :cuisine

      t.timestamps null: false
    end
  end
end
