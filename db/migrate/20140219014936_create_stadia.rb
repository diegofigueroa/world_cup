class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :city
      t.string :construction_year
      t.integer :capacity
      t.string :image_url

      t.timestamps
    end
  end
end
