class Batting < ActiveRecord::Base
  attr_accessible :team_id, :score_id, :innings, :name, :runs, :balls , :ones, :twos, :threes, :fours, :sixes, :status,
   :bowler, :strikerate
  belongs_to :score
  belongs_to :team

    before_save do
		self.runs = (1*self.ones)+(2*self.twos)+(3*self.threes)+(4*self.fours)+(6*self.sixes)
		self.strikerate = ((self.runs / self.balls.to_f)*100).round(2)
	end
end
