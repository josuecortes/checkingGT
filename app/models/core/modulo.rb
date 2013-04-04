class Core::Modulo < ActiveRecord::Base
  #acessiveis
  attr_accessible :nome, :sigla, :status

  #relacionamentos
  has_many :sistemas, :class_name=>"Core::Sistema"

  #validações
  validates_presence_of :nome
  validates_presence_of :sigla

  validates_uniqueness_of :nome
  validates_uniqueness_of :sigla
end
