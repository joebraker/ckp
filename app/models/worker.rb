class Worker < ActiveRecord::Base
	validates_presence_of :lastname
	validates_uniqueness_of :lastname

	DEGREE_TYPES = ["без степени", "кандидат", "доктор"]
	RANK_TYPES = ["без звания", "доцент", "профессор"]
	FACULTY_TYPES = ["физический", "химический", "биологический", "наук о материалах"]
end
