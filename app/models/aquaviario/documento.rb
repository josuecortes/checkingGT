class Aquaviario::Documento < ActiveRecord::Base
  attr_accessible :documento, :embarque_id, :tipo, :transportadora_destino_id,
                  :unidade_carga_id, :placa_unidade, :peso, :valor

  belongs_to :embarque, :class_name=>"Aquaviario::Embarque"
  belongs_to :transportadora_destino, :foreign_key=>"transportadora_destino_id", :class_name=>"Core::Transportadora"
  belongs_to :unidade_carga, :class_name=>"Core::UnidadeCarga"

  scope :da_transportadora, lambda {|id| {:conditions=>['transportadora_id = ?', id]}}
  validates_numericality_of :documento, :only_integer => true, :allow_blank => true
  validates_uniqueness_of :documento, :scope => [:embarque_id], :allow_blank => true

  usar_como_dinheiro :valor
  validates_numericality_of :peso, :message=>" Invalido, tente algo como: 2.5 ou 2000.45", :allow_nil => true

end
