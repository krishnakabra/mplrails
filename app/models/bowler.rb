class Bowler < ActiveRecord::Base
  attr_accessible :team_id, :score_id, :innings, :name, :runs, :overs, :avg, :wides, :noball, :maidens, :wkts
  belongs_to :score
  belongs_to :team


  	before_save do
		self.avg = (self.runs/self.overs).to_f.round(2)
	end 
end
