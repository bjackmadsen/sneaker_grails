class BrandsController < ApplicationController
	def index
		@brands = Brand.all
	end

	def new
		@brands = Brand.all
		@brand = Brand.new
	end

	def create
		@brands = Brand.all
		@brand = Brand.new(params[:brand])
		if @brand.save
			flash[:notice] = "New brand added!"
			redirect_to new_brand_path
		else
			render 'new'
		end
	end

	def show
		@styles = Style.all
		@brands = Brand.all
		@brand = Brand.find(params[:id])
	end

	def destroy
		@brand = Brand.find(params[:id])
		@brand.destroy
	end
end

