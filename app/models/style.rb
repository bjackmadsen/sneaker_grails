class Style < ActiveRecord::Base
	validates :name, :presence => true
	validates :color, :presence => true
	validates :release_date, :presence => true
	validates :price, :presence => true
	validates :content, :presence => true
	validates :brand_id, :presence => true
	has_attached_file :photo, :styles => { :medium => "900x600" },
					  :url => ":s3_domain_url",
					  :path => "/:class/:attachment/:id_partition/:style/:filename"
	validates_attachment_presence :photo
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
	belongs_to :brand 
end