class Core::FiscalizacaoRegra < ActiveRecord::Base
  attr_accessible :codigo, :descricao, :fiscalizacao_canal_id, 
                  :legislacao, :negativacao_tipo_id, 
                  :orientacao, :usuario_alterou_id, :usuario_id
  
  belongs_to :usuario, :class_name=>"Core::Usuario"
  #belongs_to :usuario_alterou, :through => :usuario_alterou_id, :class_name=>"Core::Usuario"
  belongs_to :fiscalizacao_canal, :class_name=>"Core::FiscalizacaoCanal"
  belongs_to :negativacao_tipo, :class_name=>"Core::NegativacaoTipo"
  
  has_many :nota_retidas, :class_name=>"Core::NotaRetida"

  validates_uniqueness_of :codigo

  validates_presence_of :codigo
  validates_presence_of :descricao
  validates_presence_of :legislacao
  validates_presence_of :orientacao
  validates_presence_of :usuario_id
  validates_presence_of :fiscalizacao_canal_id
  validates_presence_of :negativacao_tipo_id                                  
end
