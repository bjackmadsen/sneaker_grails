class Style < ActiveRecord::Base
	validates :name, :presence => true
	validates :color, :presence => true
	validates :release_date, :presence => true
	validates :price, :presence => true
	validates :content, :presence => true
	validates :brand_id, :presence => true
	has_attached_file :photo, :styles => { :medium => "900x600" },
					  :storage => :s3,
    				  :bucket => ENV['S3_BUCKET_NAME'],
    				  :path => "/images/:id/:style/:basename.:extension",
    				  :url => ":s3_domain_url",
      				  :s3_credentials => {
      				  	:bucket => ENV['S3_BUCKET_NAME'],
    					:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    					:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    				  }
	validates :photo, :attachment_presence => true
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
	belongs_to :brand 
end