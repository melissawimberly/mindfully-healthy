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
		        # render json: {liked: true}
	        }
		end

	end

	def unlike
		respond_to do |format|
	    	format.html {}
	      	format.js {
		        @like = Like.where(
		        	recipe_id: params[:rec_id],
		      		user_id: current_user.id
		        )
		      	# render json: {unliked: true}
		 		@like.delete_all

	        }
		end
	end

	def likesindex
		@recipes = current_user.recipes.uniq

	end

	def breakfastindex
		@recipes = Recipe.all
		@breakfastrecipes = []

		breakfast = Recipe.where(:kind => 'breakfast')
		breakfast.each do  |single_breakfast|
			@breakfastrecipes << single_breakfast 
		end
	end

	def snacksindex
		@recipes = Recipe.all
		@snackrecipes = []
		
		snacks = Recipe.where(:kind => "snacks")
		snacks.each do  |single_snack|
			@snackrecipes << single_snack
		end
		
	end

	def sweetsindex
		@recipes = Recipe.all
		@sweetrecipes = []

		sweets = Recipe.where(:kind => 'sweets')
		sweets.each do  |single_sweet|
			@sweetrecipes << single_sweet 
		end
	end

	def mmsindex
		@recipes = Recipe.all
		@mmrecipes = []

		mm = Recipe.where(:kind => 'mm')
		mm.each do  |single_mm|
			@mmrecipes << single_mm
		end
	end

	def about
		redirect_to :about
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :recipe, :kind, :pic, :user_id, :rec_id)
		end
end

