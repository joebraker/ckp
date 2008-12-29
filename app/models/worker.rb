require 'digest/sha1'

class Worker < ActiveRecord::Base
	has_and_belongs_to_many :devices
	validates_presence_of :lastname

	validates_presence_of :email
	validates_uniqueness_of :email

	attr_accessor :password_confirmation
	validates_confirmation_of :password

	DEGREE_TYPES = ["без степени", "кандидат", "доктор"]
	RANK_TYPES = ["без звания", "доцент", "профессор"]
	FACULTY_TYPES = ["физический", "химический", "биологический", "наук о материалах"]

	def validate
		errors.add_to_base("Пароль не введен" ) if hashed_password.blank?
	end

	def password
		@password
	end

	def password=(pwd)
		@password = pwd
		create_new_salt
		self.hashed_password = Worker.encrypted_password(self.password, self.salt)
	end

	def self.authenticate(email, password)
		worker = self.find_by_email(email)
		if worker
			expected_password = encrypted_password(password, worker.salt)
			if worker.hashed_password != expected_password
				worker = nil
			end
		end
		worker
	end

	def after_destroy
		if Worker.count.zero?
			raise "Последний пользователь не может быть удален"
		end
	end

	private

	def self.encrypted_password(password, salt)
		string_to_hash = password + "wible" + salt
		Digest::SHA1.hexdigest(string_to_hash)
	end

	def create_new_salt
		self.salt = self.object_id.to_s + rand.to_s
	end

end
