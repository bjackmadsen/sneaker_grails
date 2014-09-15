class StylesController < ApplicationController
	def new
		@brands = Brand.all 
		@styles = Style.all 
		@style = Style.new 
		render('styles/new.html.erb')
	end

	def create
		@brands = Brand.all 
		@styles = Style.all 
		@style = Style.new(params[:new_style])
		if @style.save
			flash[:notice] = "The shoe style has been added!"
			redirect_to('/styles/new')
		else
			render('/styles/new.html.erb')
		end
	end

	def show
		@style = Style.find(params[:id])
		render('styles/show.html.erb')
	end
end