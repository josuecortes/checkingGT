class Core::Sistema < ActiveRecord::Base
  attr_accessible :apelido, :controlador, :icone, :modulo_id, :nome, :sigla, :status, :url

  belongs_to :modulo, :class_name=>"Core::Modulo"
  
  has_many :grupo_sistemas, :class_name=>"Core::GrupoSistema"
  has_many :grupos, :through=>:grupo_sistemas, :class_name=>"Core::Grupo"
  
  validates_presence_of :nome
  validates_presence_of :sigla
  validates_presence_of :controlador

  validates_uniqueness_of :nome
  validates_uniqueness_of :sigla

end
