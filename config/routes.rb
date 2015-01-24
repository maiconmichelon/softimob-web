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
  resources :estados
  resources :departamentos
  resources :tipos_comodo
  resources :tipos_imovel

end
