class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach
      t.string :flag_url
      t.string :uniform_url
      t.text :description
      
      t.timestamps
    end
  end
end
