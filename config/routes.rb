Sec::Application.routes.draw do

  namespace :core do resources :unidade_cargas end

  root :to => 'home#index'
  resources :intranet
  resources :home

  namespace :core do
    resources :transportadoras
    resources :usuarios do
      get "resetasenha"
      resources :senhas
    end
    resources :login
    resources :perfil
    resources :modulos do
      resources :sistemas
    end
    resources :grupos do
      resources :grupo_sistemas
      resources :usuario_grupos
    end
    resources :fiscalizacao_regras
    resources :fiscalizacao_canais
    resources :negativacao_tipos
    resources :pessoa_juridicas
    resources :pessoa_fisicas
    resources :contribuintes
    resources :npfs
    resources :npjs
    resources :fiscalizacao_canais
    resources :fiscalizacao_regras
    resources :embarque_notas
    resources :notas
    resources :nota_retidas
    resources :nota_liberadas
    resources :liberar_notas


  end

  namespace :transportadora do

     resources :usuarios do
      get "resetasenha"
      resources :senhas
     end

     resources :fiscal_passes
     resources :estoques

     resources :grupos do
      resources :grupo_sistemas
      resources :grupo_usuarios
    end

    resources :estoques

    resources :embarques do
        resources :acompanhamentos
     end


  end

  namespace :aquaviario do
     resources :embarques do
        get "manifesto"
        resources :documentos
        resources :acompanhamentos
     end

     resources :portos

  end

end
