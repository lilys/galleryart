class Teacher < ActiveRecord::Base
	#validaciones
	validates :nameteacher, :presence=>true
	
	#tipos de relaciones
	has_many :works # un teacher puede tener muchos works
end
