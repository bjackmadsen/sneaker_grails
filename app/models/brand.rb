class Brand < ActiveRecord::Base
	validates :name, :presence => true
	has_many :styles, :dependent => :destroy
end 