class Comment < ApplicationRecord
	belongs_to :post
	validates :title,    length: { maximum: 100 } 
end
