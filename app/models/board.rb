class Board < ApplicationRecord
	has_many :posts
	validates :title,    length: { maximum: 100 } 
end
