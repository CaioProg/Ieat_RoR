class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :value
      t.integer :restaurantt_id

      t.timestamps
    end
  end
end
