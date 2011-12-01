# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  position   :string(255)
#  typepost   :string(255)
#  image_url  :string(255)
#

class Post < ActiveRecord::Base
	#default_scope :order => 'u'
	
	#validation stuff
	validates :title, :content, :presence => true
	validates :title, :uniqueness => true
end
