class Customer < ActiveRecord::Base
	validates :fname, presence: true, length: { minimum: 3, maximum: 50 }
	validates :sname, presence: true, length: { minimum: 3, maximum: 50 }
	validates :city, presence: true, length: { minimum: 3, maximum: 50 }
end