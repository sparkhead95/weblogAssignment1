class Post < ActiveRecord::Base
	validates_presence_of :title, :body

	belongs_to :user

	self.per_page = 8
end
