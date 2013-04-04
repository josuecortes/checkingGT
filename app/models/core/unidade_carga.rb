class Core::UnidadeCarga < ActiveRecord::Base
  attr_accessible :tipo

  validates_uniqueness_of :tipo
  validates_presence_of :tipo

  has_many :documentos, :class_name=>"Aquaviario::Documento"

end
