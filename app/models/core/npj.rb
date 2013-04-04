class Core::Npj < ActiveRecord::Base
  attr_accessible :negativacao_tipo_id, :pessoa_juridica_id, :usuario_id
  
  belongs_to :negativacao_tipo, :class_name=>"Core::NegativacaoTipo"
  belongs_to :pessoa_juridica, :class_name=>"Core::PessoaJuridica"
  belongs_to :usuario, :class_name=>"Core::Usuario"
  
  validates_presence_of :negativacao_tipo_id
  validates_presence_of :pessoa_juridica_id
  validates_presence_of :usuario_id
  
  validates_uniqueness_of :negativacao_tipo_id, :scope => [:pessoa_juridica_id]
end
