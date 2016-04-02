class RecipesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@recipes = Recipe.all
		@likes = []
		if current_user 
			likes = Like.where(user_id: current_user.id)
			likes.each do  |single_like|
				@likes << single_like.recipe_id 
			end
		end
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.create(recipe_params)
		
		redirect_to @recipe
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def like
		respond_to do |format|
	    	format.html {}
	      	format.js {
		      	@like = Like.create(
		      		recipe_id: params[:rec_id],
		      		user_id: current_user.id
		        )
		        render json: {liked: true}
	        }
		end

	end

	def unlike
		respond_to do |format|
	    	format.html {}
	      	format.js {
		        # @like = Like.where(
		        # 	recipe_id: params[:rec_id],
		      		# user_id: current_user.id
		        # )
		        Like.last
	        }
		end
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :recipe, :date, :pic, :user_id, :rec_id)
		end
end

