class StylesController < ApplicationController
	def new
		@styles = Style.all 
		@style = Style.new 
		render('styles/new.html.erb')
	end

	def create
		@brands = Brand.all 
		@styles = Style.all 
		@style = Style.new(params[:style])
		if @style.save
			flash[:notice] = "The shoe style has been added!"
			redirect_to('/styles')
		else
			render('/styles/new.html.erb')
		end
	end
end