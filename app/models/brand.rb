class Brand < ActiveRecord::Base
	validates :name, :presence => true
	has_many :styles
end 