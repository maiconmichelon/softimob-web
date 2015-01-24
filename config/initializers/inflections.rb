ActiveSupport::Inflector.inflections(:en) do |inflect|
   inflect.clear
 
  inflect.plural(/$/, 's')
  inflect.plural(/(s)$/i, '\1')
  inflect.plural(/^(paí)s$/i, '\1ses')
  inflect.plural(/(z|r)$/i, '\1es')
  inflect.plural(/al$/i, 'ais')
  inflect.plural(/el$/i, 'eis')
  inflect.plural(/ol$/i, 'ois')
  inflect.plural(/ul$/i, 'uis')
  inflect.plural(/([^aeou])il$/i, '\1is')
  inflect.plural(/m$/i, 'ns')
  inflect.plural(/^(japon|escoc|ingl|dinamarqu|fregu|portugu)ês$/i, '\1eses')
  inflect.plural(/^(|g)ás$/i, '\1ases')
  inflect.plural(/ão$/i, 'ões')
  inflect.plural(/^(irm|m)ão$/i, '\1ãos')
  inflect.plural(/^(alem|c|p)ão$/i, '\1ães')
 
  # Sem acentos...
  inflect.plural(/ao$/i, 'oes')
  inflect.plural(/^(irm|m)ao$/i, '\1aos')
  inflect.plural(/^(alem|c|p)ao$/i, '\1aes')

  inflect.singular(/([^ê])s$/i, '\1')
  inflect.singular(/^(á|gá|paí)s$/i, '\1s')
  inflect.singular(/(r|z)es$/i, '\1')
  inflect.singular(/([^p])ais$/i, '\1al')
  inflect.singular(/eis$/i, 'el')
  inflect.singular(/ois$/i, 'ol')
  inflect.singular(/uis$/i, 'ul')
  inflect.singular(/(r|t|f|v)is$/i, '\1il')
  inflect.singular(/ns$/i, 'm')
  inflect.singular(/sses$/i, 'sse')
  inflect.singular(/^(.*[^s]s)es$/i, '\1')
  inflect.singular(/ães$/i, 'ão')
  inflect.singular(/aes$/i, 'ao')
  inflect.singular(/ãos$/i, 'ão')
  inflect.singular(/aos$/i, 'ao')
  inflect.singular(/ões$/i, 'ão')
  inflect.singular(/oes$/i, 'ao')
  inflect.singular(/(japon|escoc|ingl|dinamarqu|fregu|portugu)eses$/i, '\1ês')
  inflect.singular(/^(g|)ases$/i, '\1ás')

  # Incontáveis
  inflect.uncountable %w( tórax tênis ônibus lápis fênix )
  
  # Irregulares
  inflect.irregular('tipo_ativo', 'tipos_ativo')
  inflect.irregular('tipo_comodo', 'tipos_comodo')
  inflect.irregular('finalizacao_chamado', 'finalizacoes_chamado')
  inflect.irregular('modelo_contrato', 'modelos_contrato')
  inflect.irregular('pessoa_fisica', 'pessoas_fisicas')
  inflect.irregular('pessoa_juridica', 'pessoas_juridicas')
  inflect.irregular('item_check_list', 'itens_check_list')
  inflect.irregular('acontecimento_chamado', 'acontecimentos_chamado')
  inflect.irregular('contrato_prestacao_servico', 'contratos_prestacao_servico')
  inflect.irregular('venda_aluguel', 'vendas_alugueis')
  inflect.irregular('lancamento_contabil', 'lancamentos_contabeis')
  inflect.irregular('movimentacao_contabil', 'movimentacoes_contabeis')
  inflect.irregular('plano_conta', 'planos_conta')
  inflect.irregular('origem_conta', 'origens_conta')
  inflect.irregular('conta_pagar_receber', 'contas_pagar_receber')
  
  
end