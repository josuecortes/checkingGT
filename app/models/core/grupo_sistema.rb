class Core::GrupoSistema < ActiveRecord::Base
  #accessibles
  attr_accessible :grupo_id, :sistema_id

  #relacionamentos
  belongs_to :sistema, :class_name=>"Core::Sistema"
  belongs_to :grupo, :class_name=>"Core::Grupo"
  
  validates_uniqueness_of :sistema_id, :scope => [:grupo_id]
  
end
