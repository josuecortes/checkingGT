# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections do |inflect|
   inflect.irregular 'fiscalizacao_canal', 'fiscalizacao_canais'
   inflect.irregular 'core::fiscalizacao_canal', 'core::fiscalizacao_canais'

   inflect.irregular 'embarque_nota', 'embarque_notas'
   inflect.irregular 'core::embarque_nota', 'core::embarque_notas'

   inflect.irregular 'nota', 'notas'
   inflect.irregular 'core::nota', 'core::notas'

   inflect.irregular 'liberar_nota', 'liberar_notas'
   inflect.irregular 'core::liberar_nota', 'core::liberar_notas'
end
