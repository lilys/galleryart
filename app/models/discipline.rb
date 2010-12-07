class Discipline < ActiveRecord::Base
	#validaciones
	validates :namediscipline, :presence=>true
	
	#tipo de relacion
	has_many :works
end
