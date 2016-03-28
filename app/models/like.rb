class Like < ActiveRecord::Base
	def index
		@likes = Like.all
	end

	def new
		@like = Like.new
	end

	def create
		@like = Like.create
		
		redirect_to @recipe
	end
	def destroy
	end
end
