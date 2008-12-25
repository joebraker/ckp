class Worker < ActiveRecord::Base
	has_and_belongs_to :devices
	validates_presence_of :lastname

	DEGREE_TYPES = ["без степени", "кандидат", "доктор"]
	RANK_TYPES = ["без звания", "доцент", "профессор"]
	FACULTY_TYPES = ["физический", "химический", "биологический", "наук о материалах"]
end
