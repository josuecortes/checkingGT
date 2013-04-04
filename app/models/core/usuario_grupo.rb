class Core::UsuarioGrupo < ActiveRecord::Base
  #accessibles
  attr_accessible :grupo_id, :usuario_id

  #relacionamentos
  belongs_to :usuario, :class_name=>"Core::Usuario"
  belongs_to :grupo, :class_name=>"Core::Grupo"
  
  validates_uniqueness_of :usuario_id, :scope => [:grupo_id]

end
