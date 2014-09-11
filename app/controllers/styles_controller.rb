class StylesController < ApplicationController
	def index
		@styles = Style.all 
		render('styles/index.html.erb')
	end
end