class Post < ActiveRecord::Base
	default_scope :order => 'title'
	
	#validation stuff
	validates :title, :content, :presence => true
	validates :title, :uniqueness => true
end
