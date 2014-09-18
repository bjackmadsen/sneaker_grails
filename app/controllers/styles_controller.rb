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
		@style = Style.new(params[:style])
		if @style.save
			flash[:notice] = "New style added!"
			redirect_to('/styles/new')
		else
			render('/styles/new.html.erb')
		end
	end

	def show
		@style = Style.find(params[:id])
		render('styles/show.html.erb')
	end

	def edit
		@brands = Brand.all 
		@styles = Style.all 
		@style = Style.find(params[:id])
		render('styles/edit.html.erb')
	end

	def update
		@brands = Brand.all 
    	@style = Style.find(params[:id])
    	if @style.update(params[:style])
      		redirect_to("/styles/#{@style.id}")
    	else
      		render("styles/edit.html.erb")
      	end
    end

    def destroy
    	@style = Style.find(params[:id])
    	@style.destroy
    	render('styles/destroy.html.erb')
    end
end