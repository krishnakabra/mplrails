class CreateBowlers < ActiveRecord::Migration
  def change
    create_table :bowlers do |t|
      t.integer :innings
      t.string :name
      t.integer :runs
      t.float :overs
      t.float :avg
      t.integer :wides
      t.integer :noball
      t.integer :maidens
      t.integer :wkts
      t.references :score
      t.references :team

      t.timestamps
    end
    add_index :bowlers, :score_id
    add_index :bowlers, :team_id
  end
end
