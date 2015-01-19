Rails.application.routes.draw do
  resources :comissaos

  resources :conta_pagar_recebers

  resources :origem_conta

  resources :plano_conta

  resources :movimentacao_contabils

  resources :lancamento_contabils

  resources :vistoria

  resources :indice_mes

  resources :chaves

  resources :chamado_reformas

  resources :aluguels

  resources :vendas

  resources :venda_aluguels

  resources :contrato_prestacao_servicos

  resources :acontecimento_chamados

  resources :item_check_lists

  resources :proposta

  resources :pessoa_juridicas

  resources :pessoa_fisicas

  resources :modelo_contratos

  resources :items

  resources :indices

  resources :finalizacao_chamado_reformas

  resources :feedbacks

  resources :comodos

  resources :check_lists

  resources :reservas

  resources :placas

  resources :imovels

  resources :empresas

  resources :comissionados

  resources :funcionarios

  resources :clientes

  resources :enderecos

  resources :ruas

  resources :bairros

  resources :municipios

  resources :estados

  resources :departamentos

  resources :tipo_imovel_tipo_comodos

  resources :tipo_comodos

  resources :tipo_ativos

end
