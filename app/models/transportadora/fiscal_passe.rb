class Transportadora::FiscalPasse < ActiveRecord::Base
  attr_accessible :datahora_emissao, :nota_id, :usuario_id, :destinatario, :numero_nota, :danfe, :emissor, :endereco
   
  belongs_to :nota, :class_name=>"Core::Nota"
  
  include HasBarcode
  has_barcode :barcode,
    :outputter => :svg,
    :type =>  :code_93,
    :value => Proc.new { |p| "#{p.id}" }
  
end
