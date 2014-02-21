class ChangeTeamUniformUrlForPhotoUrl < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.rename :uniform_url, :photo_url
    end
  end
end
