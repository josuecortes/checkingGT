class Core::Grupo < ActiveRecord::Base
  #accessiblesss
  attr_accessible :nome, :sigla, :status, :transportadora_id

  #relacionamentos
  has_many :usuario_grupos, :class_name=>"Core::UsuarioGrupo"
  has_many :usuarios, :through=>:usuario_grupos, :class_name=>"Core::Usuario"

  has_many :grupo_sistemas, :class_name=>"Core::GrupoSistema"
  has_many :sistemas, :through=>:grupo_sistemas, :class_name=>"Core::Sistema"

  belongs_to :transportadora, :class_name=>"Core::Transportadora"

  #validações
  validates_presence_of :nome
  validates_presence_of :sigla
  
  validates_uniqueness_of :nome, :scope => [:transportadora_id]

  scope :da_transportadora, lambda {|id| {:conditions=>['transportadora_id = ?', id]}}

end
