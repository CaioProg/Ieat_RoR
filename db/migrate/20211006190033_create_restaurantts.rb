class CreateRestaurantts < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurantts do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
