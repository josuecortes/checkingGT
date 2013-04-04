class Core::Senha < ActiveRecord::Base
  #accessibles
  attr_accessible :chave_criptografia, :senha_encriptada, :usuario_id

  attr_accessor :senha_atual
  attr_accessor :senha
  attr_accessor :senha_confirmation

  attr_accessible :senha_atual, :senha, :senha_confirmation

  #validações
  validates_presence_of :senha
  validates_confirmation_of :senha

  #relacionamentos
  belongs_to :usuario

  #chamada de funcoes 
  
  #esta funcao é chamada apos salvar um usuario no model core::usuario quando se chama a funcao cria_senha, 
  #antes de criar a senha ele executa esta funcao que chama a funcao random_alphanumeric que chama a funcao encriptar
  before_save :encriptar_senha
  
  #funcoes

  private
  def encriptar_senha
    #chama a funcao random_alphanumeric
    self.chave_criptografia = random_alphanumeric(128)
    #chama a funcao encriptar
    self.senha_encriptada = encriptar(self.chave_criptografia, self.senha)
  end

  public

  def random_alphanumeric(size=6)
    chars = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a + ['!','@','#','$','%','&','*']
    (0...size).collect { chars[Kernel.rand(chars.length)] }.join
  end

  def encriptar(salt, senha)
    return Digest::SHA1.hexdigest("#{salt}#{senha}")
  end

  #funcao valida senha
  def valida_senha(senha)
    if self.senha_encriptada == self.encriptar(self.chave_criptografia, senha)
      return true
    else
      return false
    end
  end

  #funcao login
  def self.login(login, senha, remote_ip)
    usuario = Usuario.find(:first, :conditions=>["login = ? and status = ?", login, true])
    if usuario
      if usuario.senha_encriptada == usuario.encriptar(usuario.chave_criptografia, senha)
        usuario.sessao.inicia_sessao(remote_ip, usuario.nome)
        return usuario.sessao.id
      else
        return nil
      end
    else
      return nil
    end
  end

end
