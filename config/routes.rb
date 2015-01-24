Rails.application.routes.draw do
  
  resources :comissoes
  resources :contas_pagar_receber
  resources :origens_conta
  resources :planos_conta
  resources :movimentacoes_contabil
  resources :vistorias
  resources :chaves
  resources :chamados_reforma
  resources :alugueis
  resources :vendas
  resources :contratos_prestacao_servico
  resources :propostas
  resources :pessoas_juridicas
  resources :pessoas_fisicas
  resources :modelos_contratos
  resources :itens
  resources :indices
  resources :feedbacks
  resources :comodos
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
  resources :tipos_ativo

end
