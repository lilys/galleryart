class Work < ActiveRecord::Base
# Paperclip
  has_attached_file :avatar,:styles => {:thumb=> "100x100#",:small  => "150x150>" }
      
	#validaciones
	validates :namework, :presence=>true
	validates :description , :length=> {:minimum=>1, :maximum=>200}
	validates_attachment_size :avatar, :less_than => 2.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']

	#tipos de relaciones
	belongs_to :teachers # una obra pertenece a un solo teacher
	belongs_to :disciplines
end
