class Score < ActiveRecord::Base
	attr_accessible :name, :team1, :team2, :team1score, :team2score, :toss, :venue, :date, :guest1, :photo1, :guest2, :photo2, :guest3, :photo3, :guest4, :photo4, :guest5, :photo5

	has_many :battings
	has_many :bowlers

	has_attached_file :photo1, :styles => { :small => "150x150>" },
	              :url  => "/assets/scores/:id/:style/:basename.:extension",
	              :path => ":rails_root/public/assets/scores/:id/:style/:basename.:extension"

	
	validates_attachment_size :photo1, :less_than => 5.megabytes
	validates_attachment_content_type :photo1, :content_type => ['image/jpeg', 'image/png']


	has_attached_file :photo2, :styles => { :small => "150x150>" },
	              :url  => "/assets/scores/:id/:style/:basename.:extension",
	              :path => ":rails_root/public/assets/scores/:id/:style/:basename.:extension"

	
	validates_attachment_size :photo2, :less_than => 5.megabytes
	validates_attachment_content_type :photo2, :content_type => ['image/jpeg', 'image/png']


	has_attached_file :photo3, :styles => { :small => "150x150>" },
	              :url  => "/assets/scores/:id/:style/:basename.:extension",
	              :path => ":rails_root/public/assets/scores/:id/:style/:basename.:extension"

	
	validates_attachment_size :photo3, :less_than => 5.megabytes
	validates_attachment_content_type :photo3, :content_type => ['image/jpeg', 'image/png']


	has_attached_file :photo4, :styles => { :small => "150x150>" },
	              :url  => "/assets/scores/:id/:style/:basename.:extension",
	              :path => ":rails_root/public/assets/scores/:id/:style/:basename.:extension"

	
	validates_attachment_size :photo4, :less_than => 5.megabytes
	validates_attachment_content_type :photo4, :content_type => ['image/jpeg', 'image/png']


	has_attached_file :photo5, :styles => { :small => "150x150>" },
	              :url  => "/assets/scores/:id/:style/:basename.:extension",
	              :path => ":rails_root/public/assets/scores/:id/:style/:basename.:extension"

	
	validates_attachment_size :photo5, :less_than => 5.megabytes
	validates_attachment_content_type :photo5, :content_type => ['image/jpeg', 'image/png']



end
