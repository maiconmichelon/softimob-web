Rails.application.routes.draw do

  resources :empresas do
    resources :vistorias
    resources :chaves
    resources :chamados_reforma
    resources :alugueis
    resources :vendas
    resources :contratos_prestacao_servico
    resources :propostas
    resources :pessoas_juridicas
    resources :pessoas_fisicas
    resources :modelos_contrato
    resources :feedbacks
    resources :check_lists
    resources :reservas
    resources :placas
    resources :imoveis
    resources :empresas
    resources :funcionarios
    resources :clientes
    resources :ruas
    resources :bairros
    resources :municipios
    resources :estados
    resources :departamentos
    resources :tipos_comodo
    resources :tipos_imovel
  end

  get 'estados/:estado_id/municipios', to: 'municipios#municipios_by_estado', defaults: { format: 'json' }
  get 'municipios/:municipio_id/bairros', to: 'bairros#bairros_by_municipio', defaults: { format: 'json' }
  get 'bairros/:bairro_id/ruas', to: 'ruas#ruas_by_bairro', defaults: { format: 'json' }

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "empresas#index"

end
