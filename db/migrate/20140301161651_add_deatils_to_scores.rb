class AddDeatilsToScores < ActiveRecord::Migration
  def change
    add_column :scores, :scoreteam1, :string
    add_column :scores, :scoreteam2, :string
  end
end
