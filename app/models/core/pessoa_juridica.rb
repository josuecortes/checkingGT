class Core::PessoaJuridica < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :cnpj, :endereco, :estado, :observacoes, :razaosocial, :usuario_alterou_id, :usuario_id

  belongs_to :usuario, :class_name=>"Core::Usuario"
  #belongs_to :usuario_alterou, :through => :usuario_alterou_id, :class_name=>"Core::Usuario"
  
  has_many :npj, :class_name=>"Core::Npj"
  
  validates_uniqueness_of :cnpj
  validates_uniqueness_of :razaosocial
  validates_presence_of :cnpj
  validates_presence_of :razaosocial
  validates_presence_of :usuario_id

  #usar_como_cnpj :cnpj
end
