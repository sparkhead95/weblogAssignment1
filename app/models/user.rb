class User < ActiveRecord::Base

	validates_presence_of :firstname, :lastname, :email
	validates_format_of :email, with: /\A([\w\.\-\+]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Bad email address format'

	def firstname=(value)
	  write_attribute :firstname, (value ? value.humanize : nil)
	end

	def lastname=(value)
	  write_attribute :lastname, (value ? value.humanize : nil)
	end

	self.per_page = 8

end
