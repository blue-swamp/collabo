class Article < ApplicationRecord
	attachment :image
	validates :title, presence: true
	validates :body, presence: true
	validates :weather, presence: true
	validates :title, length: { maximum: 20}
	validates :body, length: { maximum: 200}
	validates :weather, length: { maximum: 10}
end
