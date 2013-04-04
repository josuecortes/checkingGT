class Core::NegativacaoTipo < ActiveRecord::Base
  attr_accessible :codigo, :descricao, :usuario_alterou_id, :usuario_id

  belongs_to :usuario, :class_name=>"Core::Usuario"
  #belongs_to :usuario_alterou, :through => :usuario_alterou_id, :class_name=>"Core::Usuario"
  
  has_many :npf, :class_name=>"Core::Npf"
  has_many :npj, :class_name=>"Core::Npj"
  
  has_many :fiscalizacao_regras, :class_name=>"Core::FiscalizacaoRegra"

  validates_uniqueness_of :codigo
  validates :codigo, length:{maximum: 5}
  validates_presence_of :codigo
  validates_presence_of :descricao
  validates_presence_of :usuario_id

end
