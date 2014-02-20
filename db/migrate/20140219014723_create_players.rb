class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.date :birthday
      t.integer :height
      t.integer :weight
      t.integer :squad_number
      t.string :photo_url
      t.references :team, index: true

      t.timestamps
    end
  end
end
