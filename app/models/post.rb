class Post < ApplicationRecord
	validates :title, presence: true, length: { minimum: 2, maximum: 60 }
	validates :content, presence: true
end
