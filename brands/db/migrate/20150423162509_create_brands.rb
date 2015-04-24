class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.string :country
      t.string  :image
    end
  end
end
