class BrandsController < ApplicationController
	def index
		@brands = Brand.all 
		render('brands/index.html.erb')
	end
end