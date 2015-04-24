class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.string :year
      t.integer :brand_id
      t.string :color 
      t.string  :image
    end
  end
end
