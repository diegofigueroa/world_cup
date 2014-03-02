class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :scorer
      t.integer :minute
      t.boolean :own_goal, default: false
      t.boolean :penalty, default: false
      t.references :team, index: true
      t.references :match, index: true

      t.timestamps
    end
  end
end
