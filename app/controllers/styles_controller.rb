class StylesController < ApplicationController
	def new
		@brands = Brand.all
		@styles = Style.all
		@style = Style.new
	end

	def create
		@brands = Brand.all
		@styles = Style.all
		@style = Style.new(params[:style])
		if @style.save
			flash[:notice] = "New style added!"
			redirect_to new_style_path
		else
			render 'new'
		end
	end

	def show
		@style = Style.find(params[:id])
	end

	def edit
		@brands = Brand.all
		@styles = Style.all
		@style = Style.find(params[:id])
	end

	def update
		@brands = Brand.all
    	@style = Style.find(params[:id])
    	if @style.save(params[:style])
      		redirect_to style_path(@style)
    	else
      		render 'edit'
      	end
    end

    def destroy
    	@style = Style.find(params[:id])
    	@style.destroy
    end
end
