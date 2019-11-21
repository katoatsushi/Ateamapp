class Post < ApplicationRecord
	belongs_to :board
	has_many :comments
	validates :title,    length: { maximum: 100 } 
end
