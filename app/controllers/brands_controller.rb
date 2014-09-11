class BrandsController < ApplicationController
	def index
		@brands = Brand.all 
		render('brands/index.html.erb')
	end

	def new
		@brands = Brand.all
		@brand = Brand.new
		render('brands/new.html.erb')
	end

	def create
		@brands = Brand.all 
		@brand = Brand.new(params[:brand])
		if @brand.save
			flash[:notice] = "The shoe brand has been added!"
			redirect_to('/brands')
		else
			render('/brands/new.html.erb')
		end
	end

	def show
		@brands = Brand.all 
		@brand = Brand.find(params[:id])
		render('brands/show.html.erb')
	end

	def destroy
		@brand = Brand.find(params[:id])
		@brand.destroy
		render('brands/destroy.html.erb')
	end
end

