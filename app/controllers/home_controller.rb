class HomeController < ApplicationController
  
  skip_before_filter :autenticado
  skip_before_filter :autorizado
  skip_before_filter :mudar_senha_primeiro_login
  
  def index
  end
end
