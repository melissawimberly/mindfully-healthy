class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception



  def after_sign_in_path_for(resource)
  	 # binding.pry
     #puts "this shit happened....!!!!!!!"
     #raise "foo"
     # redirect_to root_path

     binding.pry
     root_path
   end
end
