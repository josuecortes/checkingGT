class Aquaviario::Embarque < ActiveRecord::Base
  attr_accessible :balsa, :data_chegou, :data_fechou, :data_previsao, :data_saida,
                  :porto_destino_id, :porto_saida_id,:situacao, :usuario_chegou_id,
                  :usuario_fechou_id, :usuario_id, :transportadora_id

  belongs_to :transportadora, :class_name=>"Core::Transportadora"
  belongs_to :usuario, :class_name=>"Core::Usuario"
  belongs_to :usuario_fechou, :foreign_key=>"usuario_fechou_id", :class_name=>"Core::Usuario"
  belongs_to :usuario_chegou, :foreign_key=>"usuario_chegou_id", :class_name=>"Core::Usuario"
  belongs_to :porto_saida, :foreign_key=>"porto_saida_id", :class_name=>"Aquaviario::Porto"
  belongs_to :porto_destino, :foreign_key=>"porto_destino_id", :class_name=>"Aquaviario::Porto"
  
  has_many :notas, :class_name=>"Core::Nota"

  has_many :documentos, :class_name=>"Aquaviario::Documento"

  validates_presence_of :balsa
  validates_presence_of :porto_saida_id
  validates_presence_of :porto_destino_id
  validates_presence_of :usuario_id
  validates_presence_of :transportadora_id
    
  scope :da_transportadora, lambda {|id| {:conditions=>['transportadora_id = ?', id]}}
  
  after_update :atualizar_estoque
    
  def atualizar_estoque
    #if self.situacao == "Finalizado"
      #self.notas.each do |nota|
        #Transportadora::Estoque.find_or_create_by_transportadora_id_and_nota_id_and_embarque_id(:embarque_id=>nota.embarque.id, :nota_id=>nota.id, :transportadora_id=>nota.transportadora_destino_id)  
      #end  
    #end 
  end
  
  include HasBarcode
  has_barcode :barcode,
    :outputter => :svg,
    :type =>  :code_93,
    :value => Proc.new { |p| "#{p.id}" }
  
end