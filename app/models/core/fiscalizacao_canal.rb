class Core::FiscalizacaoCanal < ActiveRecord::Base
  attr_accessible :codigo, :descricao, :usuario_alterou_id, :usuario_id
  
  belongs_to :usuario, :class_name=>"Core::Usuario"
  #belongs_to :usuario_alterou, :through => :usuario_alterou_id, :class_name=>"Core::Usuario"
  belongs_to :fiscalizacao_regra, :class_name=>"Core::FiscalizacaoRegra"
  
  validates_uniqueness_of :codigo

  validates_presence_of :codigo
  validates_presence_of :descricao
  validates_presence_of :usuario_id
  
end
