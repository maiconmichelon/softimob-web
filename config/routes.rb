Rails.application.routes.draw do

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
  get 'estados/:estado_id/municipios', to: 'municipios#municipios_by_estado', defaults: { format: 'json' }
  get 'municipios/:municipio_id/bairros', to: 'bairros#bairros_by_municipio', defaults: { format: 'json' }
  get 'bairros/:bairro_id/ruas', to: 'ruas#ruas_by_bairro', defaults: { format: 'json' }
  
  resources :estados
  resources :departamentos
  resources :tipos_comodo
  resources :tipos_imovel

end
