class Work < ActiveRecord::Base
	#validaciones
	validates :namework, :presence=>true
	validates :description , :length=> {:minimum=>1, :maximum=>200}
	
	#tipos de relaciones
	belongs_to :teachers # una obra pertenece a un solo teacher
	belongs_to :disciplines
end
