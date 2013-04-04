# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = Core::Usuario.find_or_create_by_nome(:nome=>"admin", :email=>"admin@", :status=>true)

# Adicionar os Sistemas do Core
m = Core::Modulo.find_or_create_by_nome(:nome=>"Administracao Geral", :sigla=>"AdmGeral", :status=>true)
s1 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Usuarios", :sigla=>"ContUsuariosGeral", :url=>"/core/usuarios", :controlador=>"Core::UsuariosController", :status=>true)
s2 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Grupos", :sigla=>"ContGruposGeral", :url=>"/core/grupos", :controlador=>"Core::GruposController", :status=>true)
s3 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Modulos", :sigla=>"ContModulos", :url=>"/core/modulos", :controlador=>"Core::ModulosController", :status=>true)
s4 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Sistemas", :sigla=>"ContSistemas", :url=>"", :controlador=>"Core::SistemasController", :status=>true)
s5 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Usuarios por Grupo", :sigla=>"ContUsuariosGrupoGeral", :url=>"", :controlador=>"Core::UsuarioGruposController", :status=>true)
s6 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Sistemas por Grupo", :sigla=>"ContSistemasGrupoGeral", :url=>"", :controlador=>"Core::GrupoSistemasController", :status=>true)
s7 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Tranportadoras", :sigla=>"ContTransportadorasGeral", :url=>"/core/transportadoras", :controlador=>"Core::TransportadorasController", :status=>true)
s8 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Pessoa Fisica", :sigla=>"ContPessoaFisica", :url=>"/core/pessoa_fisicas", :controlador=>"Core::PessoaFisicasController", :status=>true)
s9 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Pessoa Juridica", :sigla=>"ContPessoaJuridica", :url=>"/core/pessoa_juridicas", :controlador=>"Core::PessoaJuridicasController", :status=>true)
s10 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Tipos de Negativacao", :sigla=>"ContTipoNegativacao", :url=>"/core/negativacao_tipos", :controlador=>"Core::NegativacaoTiposController", :status=>true)
s11 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Canais de Fiscalizacao", :sigla=>"ContFiscalizacaoCanais", :url=>"/core/fiscalizacao_canais", :controlador=>"Core::FiscalizacaoCanaisController", :status=>true)
s12 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Regras de Fiscalizacao", :sigla=>"ContFiscalizacaoRegras", :url=>"/core/fiscalizacao_regras", :controlador=>"Core::FiscalizacaoRegrasController", :status=>true)
s13 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Negativacao de Pessoa Fisica", :sigla=>"ContNPF", :url=>"/core/npfs", :controlador=>"Core::NpfsController", :status=>true)
s14 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Negativacao de Pessoa Juridica", :sigla=>"ContNPJ", :url=>"/core/npjs", :controlador=>"Core::NpjsController", :status=>true)
s15 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Tipos de Unidade de Carga", :sigla=>"ContTipUniCarg", :url=>"/core/unidade_cargas", :controlador=>"Core::UnidadeCargasController", :status=>true)

# grupos padrao do sistema
g = Core::Grupo.find_or_create_by_nome(:nome=>"Administracao Geral", :sigla=>"ADM_Geral", :status=>true)

Core::UsuarioGrupo.find_or_create_by_usuario_id_and_grupo_id(:usuario_id=>u.id, :grupo_id=>g.id)

Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s1.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s2.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s3.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s4.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s5.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s6.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s7.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s8.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s9.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s10.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s11.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s12.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s13.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s14.id)

#modulo transportadoras
mm = Core::Modulo.find_or_create_by_nome(:nome=>"Transportadora", :sigla=>"TransBasico", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Usuarios", :sigla=>"ContUsuTrans", :url=>"/transportadora/usuarios", :controlador=>"Transportadora::UsuariosController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Grupos da Transportadora", :sigla=>"ContGruTrans", :url=>"/transportadora/grupos", :controlador=>"Transportadora::GruposController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Sistemas por Grupo da Transportadora", :sigla=>"ContSisGruTrans", :url=>"", :controlador=>"Transportadora::GrupoSistemasController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Usuarios por Grupo da Transportadora", :sigla=>"ContUsuGruTrans", :url=>"", :controlador=>"Transportadora::GrupoUsuariosController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Estoque da Transportadora", :sigla=>"ContEstTrans", :url=>"/transportadora/estoques", :controlador=>"Transportadora::EstoquesController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Acompanhamento de Embarques", :sigla=>"ContAcompEmbTrans", :url=>"/transportadora/embarques", :controlador=>"Transportadora::EmbarquesController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Notas do Acompanhamento de Embarques", :sigla=>"ContNotdoAcompEmbTrans", :url=>"", :controlador=>"Transportadora::AcompanhamentosController", :status=>true)

#modulo transportadora aquaviaria
mmm = Core::Modulo.find_or_create_by_nome(:nome=>"Aquaviario", :sigla=>"TransAqua", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Portos", :sigla=>"ContPortos", :url=>"/aquaviario/portos", :controlador=>"Aquaviario::PortosController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Embarques", :sigla=>"ContEmbarques", :url=>"/aquaviario/embarques", :controlador=>"Aquaviario::EmbarquesController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Documentos do Embarque", :sigla=>"ContDocumentosEmbarque", :url=>"", :controlador=>"Aquaviario::DocumentosController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Acompanhamento de Notas do Embarque", :sigla=>"ContAcompNotEmb", :url=>"", :controlador=>"Aquaviario::AcompanhamentosController", :status=>true)
