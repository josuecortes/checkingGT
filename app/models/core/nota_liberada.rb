class Core::NotaLiberada < ActiveRecord::Base
  attr_accessible :data_entrada, :data_inclusao, :data_pagamento, :data_vencimento, :datahora_liberacao, 
                  :fiscal_passe_id, :nota_id, :usuario_id, :valor_correcao_monetaria, :valor_juros, :valor_multa,
                  :valor_principal, :valor_total
                  
  belongs_to :nota, :class_name=>"Core::Nota"
  
  scope :da_transportadora, lambda {|id| {:conditions=>['transportadora_id = ?', id]}}
                  
end
