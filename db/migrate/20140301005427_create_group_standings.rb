class CreateGroupStandings < ActiveRecord::Migration
  def change
    create_table :group_standings do |t|
      t.integer :points, default: 0
      t.integer :played, default: 0
      t.integer :wins, default: 0
      t.integer :loses, default: 0
      t.integer :draws, default: 0
      t.integer :goals_scored, default: 0
      t.integer :goals_against, default: 0
      
      t.references :team, index: true
      t.references :group, index: true
      
      t.timestamps
    end
  end
end
