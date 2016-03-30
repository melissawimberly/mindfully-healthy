class Like < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	belongs_to :user
  	belongs_to :recipe
end
