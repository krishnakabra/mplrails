ActiveAdmin.register Score do
	form do |f|                     
	    f.inputs "Scores New" do       
	      	f.input   :name
		    f.input   :team1, as: :select, collection: Team.all
		    f.input   :team2, as: :select, collection: Team.all 
		    f.input   :toss
		    f.input   :venue
		    f.input   :date
		    f.input   :team1score
		    f.input   :team2score
		    f.input   :guest1
		    f.input   :photo1, required: false
		    f.input   :guest2
		    f.input   :photo2, required: false
		    f.input   :guest3
		    f.input   :photo3, required: false
		    f.input   :guest4
		    f.input   :photo4, required: false
		    f.input   :guest5
		    f.input   :photo5, required: false

		    end                               
	    f.actions                         
	end    
end
