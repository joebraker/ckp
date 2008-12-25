class Device < ActiveRecord::Base
	has_and_belongs_to_many :workers
	validates_presence_of :type
	validates_presence_of :name
end
