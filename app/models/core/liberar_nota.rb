class Core::LiberarNota < ActiveRecord::Base
  attr_accessible :arrecadacao_codigo, :data_inclusao, :datahora_liberacao, :descricao_liberacao, :evento_liberacao, :fiscalizacao_regra_id, :motivo_liberacao, :nota_retida_id, :usuario_id, :valor_correcao_monetaria, :valor_juros, :valor_multa, :valor_principal, :valor_total
end
