class Core::Nota < ActiveRecord::Base
  attr_accessible :cnpj_destino, :cnpj_origem, :codigo, :cpf_destino, :data_emissao, :data_entrada, 
                  :numero_nota, :numero_pin_suframa, :qtd_itens_nfe, :uf_destino, :uf_origem, :usuario_id, 
                  :valor_bc_icms, :valor_bc_st, :valor_bc_st, :valor_icms, :valor_icms, :valor_produtos, 
                  :valor_st, :valor_total, :situacao, :embarque_id, :transportadora_id, 
                  :transportadora_destino_id,
                  
                  :razao_social_destino, :nome_destino, :endereco_destino, :numero_destino, :bairro_destino,:ie_destino, :razao_social_origem
                  
  belongs_to :embarque, :class_name=>"Aquaviario::Embarque"
  belongs_to :transportadora_destino, :foreign_key=>"transportadora_destino_id", :class_name=>"Core::Transportadora"
  has_one :nota_liberada, :class_name=>"Core::NotaLiberada"
  has_many :nota_retidas, :class_name=>"Core::NotaRetida"
  
  has_one :fiscal_passe, :class_name=>"Transportadora::FiscalPasse"
  
  validates_uniqueness_of :codigo
  
  scope :da_transportadora, lambda {|id| {:conditions=>['transportadora_id = ?', id]}}
                  
end
