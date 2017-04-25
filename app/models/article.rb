class Article < ActiveRecord::Base

	belongs_to :category

	scope :alphabetical, -> { order(:name) }
	scope :active,       -> { where(active: true) }


	validates :title, presence: true
	validates :content, presence: true
end
