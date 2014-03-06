class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name
      t.string :team1
      t.string :team2
      t.string :team1score
      t.string :team2score
      t.string :toss
      t.string :venue
      t.date :date
      t.string :guest1
      t.string :guest2
      t.string :guest3
      t.string :guest4
      t.string :guest5

      t.timestamps
    end
  end
end
