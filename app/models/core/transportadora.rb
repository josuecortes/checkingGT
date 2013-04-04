class Core::Transportadora < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :cnpj, :email, :endereco, :estado,
                  :fax, :inscricaoestadual, :nomefantasia, :razaosocial, :telefone, :tipo

  has_many :portos, :class_name=>"Aquaviario::Porto"
  has_many :embarques, :class_name=>"Aquaviario::Embarque"
  has_many :documentos, :through=>:embarques, :class_name=>"Aquaviario::Documento"
  has_many :grupos, :class_name=>"Core::Grupo"
  has_many :notas, :class_name=>"Core::Nota"
  has_one :estoque, :class_name=>"Aquaviario::Estoque"


  belongs_to :usuario, :class_name=>"Core::Usuario"
#  belongs_to :usuario_fechou, :foregn

  validates_uniqueness_of :cnpj
  validates_uniqueness_of :inscricaoestadual
  validates_uniqueness_of :nomefantasia
  validates_uniqueness_of :razaosocial

  validates_presence_of :cnpj
  validates_presence_of :nomefantasia
  validates_presence_of :email
  validates_presence_of :tipo

  #usar_como_cnpj :cnpj

  after_create :criar_usuario

  def criar_usuario
    @usuario = Core::Usuario.new
    @usuario.nome = self.nomefantasia
    @usuario.email = self.email
    @usuario.email_confirmation = self.email
    @usuario.transportadora_id = self.id
    @usuario.save

    @g = Core::Grupo.create(:nome => "Administradores", :sigla => "Adm", :status => true, :transportadora_id => self.id)
    @ug = Core::UsuarioGrupo.new
    @ug.grupo_id = @g.id
    @ug.usuario_id = @usuario.id
    @ug.save
    
    sis = Core::Sistema.where("controlador like '%Transportadora::%'")

    sis.each do |s|
      Core::GrupoSistema.create(:grupo_id=>@g.id, :sistema_id=>s.id)
    end
    
    if self.tipo == "Aquaviario"
    
      sis = Core::Sistema.where("controlador like '%Aquaviario::%'")

      sis.each do |s|
        Core::GrupoSistema.create(:grupo_id=>@g.id, :sistema_id=>s.id)
      end
    
    end

  end

end    
