class Recipe < ActiveRecord::Base
	has_attached_file :pic, styles: { thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :pic, content_type: /\Aimage\/.*\Z/
    has_many :likes
    has_many :users, :through => :likes
end
