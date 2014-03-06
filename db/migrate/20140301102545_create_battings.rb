class CreateBattings < ActiveRecord::Migration
  def change
    create_table :battings do |t|
      t.integer :innings
      t.string :name
      t.integer :runs
      t.integer :balls      
      t.integer :ones
      t.integer :twos
      t.integer :threes
      t.integer :fours
      t.integer :sixes
      t.boolean :status
      t.string :bowler
      t.float :strikerate
      t.references :score
      t.references :team

      t.timestamps
    end
    add_index :battings, :score_id
    add_index :battings, :team_id
  end
end
