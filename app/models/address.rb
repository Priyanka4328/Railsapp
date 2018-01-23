class Address < ApplicationRecord
	validates :city, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
	validates :state, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
	validates :pincode, presence: true, format: { with: /\A[0-9]+\z/ }, length: { is: 6 }
end
