class Post < ActiveRecord::Base
	#default_scope :order => 'u'
	
	#validation stuff
	validates :title, :content, :presence => true
	validates :title, :uniqueness => true
end
