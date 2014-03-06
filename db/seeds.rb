# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'rubygems'
require 'faker'

#
# ASIA CUP -- 2014
#
Team.create([{name: 'Pakistan'}, {name: 'Sri Lanka'}, {name: 'Bangladesh'}, {name: 'India'}, {name: 'Afghanistan'}])


Score.create([{name: '1st Match', team1: Team.find(1).id , team2: Team.find(2).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name}, 
	{name: '2nd Match', team1: Team.find(3).id , team2: Team.find(4).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name}, 
	{name: '3rd Match', team1: Team.find(5).id , team2: Team.find(1).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: '4th Match', team1: Team.find(4).id , team2: Team.find(2).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: '5th Match', team1: Team.find(3).id , team2: Team.find(5).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: '6th Match', team1: Team.find(4).id , team2: Team.find(1).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: '7th Match', team1: Team.find(5).id , team2: Team.find(2).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: '8th Match', team1: Team.find(4).id , team2: Team.find(1).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: '9th Match', team1: Team.find(5).id , team2: Team.find(4).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: '10th Match', team1: Team.find(3).id , team2: Team.find(2).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name},
	{name: 'Final Match', team1: Team.find(4).id , team2: Team.find(1).id, toss: Faker::Lorem.sentence, team1score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", team2score: "#{Random.rand(100..200)}" + "/" + "#{Random.rand(1..7)}", venue: Faker::Address.city, date: Random.rand(2) == 1 ? Date.today : Date.tomorrow, guest1: Faker::Name.name, guest2: Faker::Name.name, guest3: Faker::Name.name, guest4: Faker::Name.name, guest5: Faker::Name.name}])

# 1st Match

11.times do 
    Batting.create(score_id: 1, innings: 1, team_id: 1, name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 1, innings: 1, team_id: 2, name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 1, innings: 2, team_id: 2, name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 1, innings: 2, team_id: 1, name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 2nd Match

11.times do 
    Batting.create(score_id: 2, innings: 1, team_id: 3, name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 2, innings: 1, team_id: 4, name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 2, innings: 2, team_id: 4, name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 2, innings: 2, team_id: 3, name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 3rd Match

11.times do 
    Batting.create(score_id: 3, innings: 1, team_id: 5,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 3, innings: 1, team_id: 1,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 3, innings: 2, team_id: 1,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 3, innings: 2, team_id: 5,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 4th Match

11.times do 
    Batting.create(score_id: 4, innings: 1, team_id: 4,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 4, innings: 1, team_id: 3,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 4, innings: 2, team_id: 3,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 4, innings: 2, team_id: 4,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end



# 5th Match

11.times do 
    Batting.create(score_id: 5, innings: 1, team_id: 3,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 5, innings: 1, team_id: 5,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 5, innings: 2, team_id: 5,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 5, innings: 2, team_id: 3,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 6th Match

11.times do 
    Batting.create(score_id: 6, innings: 1, team_id: 4,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 6, innings: 1, team_id: 1,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 6, innings: 2, team_id: 1,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 6, innings: 2, team_id: 4,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 7th Match

11.times do 
    Batting.create(score_id: 7, innings: 1, team_id: 5,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 7, innings: 1, team_id: 2,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 7, innings: 2, team_id: 2,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 7, innings: 2, team_id: 5,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 8th Match

11.times do 
    Batting.create(score_id: 8, innings: 1, team_id: 3,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 8, innings: 1, team_id: 1,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 8, innings: 2, team_id: 1,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 8, innings: 2, team_id: 3,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 9th Match

11.times do 
    Batting.create(score_id: 9, innings: 1, team_id: 5,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 9, innings: 1, team_id: 4,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 9, innings: 2, team_id: 4,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 9, innings: 2, team_id: 5,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# 10th Match

11.times do 
    Batting.create(score_id: 10, innings: 1, team_id: 3,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 10, innings: 1, team_id: 2,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 10, innings: 2, team_id: 2,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 10, innings: 2, team_id: 3,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end


# Final Match

11.times do 
    Batting.create(score_id: 11, innings: 1, team_id: 4,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 11, innings: 1, team_id: 1,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end
11.times do 
    Batting.create(score_id: 11, innings: 2, team_id: 1,name: Faker::Name.name, bowler: Faker::Name.name , 
    	balls: Random.rand(20..65), ones: Random.rand(20..40), twos: Random.rand(5..10), threes: Random.rand(2..5), sixes: Random.rand(6..10), 
    	fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
end

5.times do
	Bowler.create(score_id: 11, innings: 2, team_id: 4,name: Faker::Name.name, runs: Random.rand(50..78), overs: Random.rand(1..10), 
		wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3), 
		wkts: Random.rand(1..2))
end







# 
# Chanakya
# 



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# require 'rubygems'
# require 'faker'


# teams = Team.create([{name: 'India'}, {name: 'Australia'}, {name: 'England'}, {name: 'Pakistan'},
#      {name: 'Zimbabwe'}, {name: 'South Africa'}, {name: 'West Indies'}, {name: 'Newzeland'}])

# 11.times do
#         @a  = Random.rand(100..200)
#         @b = Random.rand(1..7)
#     Score.create(
#         name:  Faker::Name.name ,
#         team1: Team.all[rand(Team.count)].id,
#         team2: Team.all[rand(Team.count)].id,
#         toss: Faker::Lorem.sentence ,
#         venue:  Faker::Name.name ,
#         date: Random.rand(2) == 1 ? Date.today : Date.tomorrow,
#         scoreteam1: "#{@a}" + "/" + "#{@b}",
#         scoreteam2: "#{@a}" + "/" + "#{@b}"
#         )
# end

# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 1, innings: 1, name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 2, innings: 1, name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end
# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 2, innings: 2, name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 1, innings: 2, name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end


# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 3, innings: 1, name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 4, innings: 1, name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end
# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 4, innings: 2, name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 3, innings: 2, name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end


# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 1, innings: 1,name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 4, innings: 1,name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end
# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 4, innings: 2,name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 1, innings: 2,name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end


# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 2, innings: 1,name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 4, innings: 1,name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end
# 11.times do
#     Batting.create(score_id:Team.all[rand(Team.count)].id, team_id: 4, innings: 2,name: Faker::Name.name, bowler: Faker::Name.name ,
#         balls: Random.rand(20..65), runs: Random.rand(50..160), sixes: Random.rand(6..10),
#         fours: Random.rand(4..10), status: Random.rand(2) == 1 ? true : false)
# end

# 5.times do
#     Bowler.create(score_id:Team.all[rand(Team.count)].id,  team_id: 2, innings: 2,name: Faker::Name.name, overs: Random.rand(1..6),
#         wides: Random.rand(1..5), noball: Random.rand(2..5), maidens: Random.rand(1..3),
#         wkts: Random.rand(1..2))
# end





