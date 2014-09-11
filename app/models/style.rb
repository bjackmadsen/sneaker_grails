class Style < ActiveRecord::Base
	validates :name, :presence => true
	validates :color, :presence => true
	validates :release_date, :presence => true
	validates :price, :presence => true
	validates :content, :presence => true
	validates :brand_id, :presence => true
end