class Core::PessoaFisica < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :cpf, :endereco, :estado, :nome, :observacoes, :usuario_alterou_id, :usuario_id

  belongs_to :usuario, :class_name=>"Core::Usuario"
  #belongs_to :usuario_alterou, :through => :usuario_alterou_id, :class_name=>"Core::Usuario"
  
  has_many :npf, :class_name=>"Core::Npf"

  validates_uniqueness_of :cpf
  validates_uniqueness_of :nome
  validates_presence_of :cpf
  validates_presence_of :nome
  validates_presence_of :usuario_id

  #usar_como_cpf :cpf

end
