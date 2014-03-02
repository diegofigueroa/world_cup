class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :referee
      
      t.integer :stage, default: 1
      t.integer :state, default: 1
      
      t.integer :local_score, default: 0
      t.integer :visitor_score, default: 0
      t.boolean :draw, default: false
      
      t.references :local, index: true
      t.references :visitor, index: true
      t.references :winner, index: true
      t.references :loser, index: true
      t.references :group, index: true
      t.references :stadium, index: true
      
      t.timestamps
    end
  end
end
