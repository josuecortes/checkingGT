class Aquaviario::Porto < ActiveRecord::Base
  attr_accessible :bairro, :calado, :capacidade, :cep, :cidade, :email, :endereco, :estado, 
                  :fax, :nome, :telefone, :transportadora_id

  belongs_to :transportadora, :class_name=>"Core::Transportadora"
  has_many :embarques, :class_name=>"Aquaviario::Embarque"

  validates_presence_of :nome
  validates_presence_of :estado
  validates_presence_of :cidade
  validates_presence_of :transportadora_id

  scope :da_transportadora, lambda {|id| {:conditions=>['transportadora_id = ?', id]}}

end
