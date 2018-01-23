class User < ApplicationRecord
	validates :name, presence: true, format:{with: /\A[a-zA-z]+ [a-zA-z]+\z/, message: 'Invalid Name' }
	validates :email, presence: true, uniqueness: true, format: {with:/\A[A-Za-z0-9\W]+*@[A-Za-z0-9\W]+[.][a-z]+\z/, message: 'Invalid Email' } 
	validates :password, presence: true, format: {with: /(?=.*[a-z]+)(?=.*[A-Z]+)(?=.*[0-9]+)(?=.*\W+)/, message: 'Invalid Password' }
	validates :gender, presence: true, format: {with: /\AMale\z|\AFemale\z/, message: 'gender can be Male or  Female ' }
    validates :dob, presence: true
	
end
