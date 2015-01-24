# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150118155403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acontecimentos_chamado", force: true do |t|
    t.date     "data"
    t.integer  "funcionario_id"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acontecimentos_chamado", ["funcionario_id"], name: "index_acontecimentos_chamado_on_funcionario_id", using: :btree

  create_table "bairros", force: true do |t|
    t.string   "nome"
    t.integer  "municipio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bairros", ["municipio_id"], name: "index_bairros_on_municipio_id", using: :btree

  create_table "chamados_reforma", force: true do |t|
    t.integer  "aluguel_id"
    t.date     "data"
    t.integer  "funcionario_id"
    t.string   "problema"
    t.integer  "finalizacaoChamadoReforma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chamados_reforma", ["aluguel_id"], name: "index_chamados_reforma_on_aluguel_id", using: :btree
  add_index "chamados_reforma", ["finalizacaoChamadoReforma_id"], name: "index_chamados_reforma_on_finalizacaoChamadoReforma_id", using: :btree
  add_index "chamados_reforma", ["funcionario_id"], name: "index_chamados_reforma_on_funcionario_id", using: :btree

  create_table "chaves", force: true do |t|
    t.string   "numero"
    t.integer  "imovel_id"
    t.integer  "localizacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chaves", ["imovel_id"], name: "index_chaves_on_imovel_id", using: :btree

  create_table "check_lists", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "check_lists", ["empresa_id"], name: "index_check_lists_on_empresa_id", using: :btree

  create_table "clientes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comissionados", force: true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.date     "dataNascimento"
    t.boolean  "ativo"
    t.integer  "endereco_id"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comissionados", ["empresa_id"], name: "index_comissionados_on_empresa_id", using: :btree
  add_index "comissionados", ["endereco_id"], name: "index_comissionados_on_endereco_id", using: :btree

  create_table "comissoes", force: true do |t|
    t.integer  "vendaAluguel_id"
    t.integer  "comissionado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comissoes", ["comissionado_id"], name: "index_comissoes_on_comissionado_id", using: :btree
  add_index "comissoes", ["vendaAluguel_id"], name: "index_comissoes_on_vendaAluguel_id", using: :btree

  create_table "comodos", force: true do |t|
    t.integer  "tipoComodo_id"
    t.integer  "quantidade"
    t.string   "descricao"
    t.integer  "imovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comodos", ["imovel_id"], name: "index_comodos_on_imovel_id", using: :btree
  add_index "comodos", ["tipoComodo_id"], name: "index_comodos_on_tipoComodo_id", using: :btree

  create_table "contas_pagar_receber", force: true do |t|
    t.decimal  "valor",                   precision: 12, scale: 2
    t.decimal  "valorJurosDesconto",      precision: 12, scale: 2
    t.date     "dataConta"
    t.date     "dataVencimento"
    t.date     "dataPagamento"
    t.integer  "OrigemConta_id"
    t.integer  "tipo"
    t.integer  "movimentacaoContabil_id"
    t.string   "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contas_pagar_receber", ["OrigemConta_id"], name: "index_contas_pagar_receber_on_OrigemConta_id", using: :btree
  add_index "contas_pagar_receber", ["movimentacaoContabil_id"], name: "index_contas_pagar_receber_on_movimentacaoContabil_id", using: :btree

  create_table "contratos_prestacao_servico", force: true do |t|
    t.decimal  "valorImovel",       precision: 12, scale: 4
    t.integer  "tipo"
    t.integer  "imovel_id"
    t.boolean  "divulgar"
    t.date     "dataInicio"
    t.date     "dataVencimento"
    t.integer  "funcionario_id"
    t.integer  "cliente_id"
    t.boolean  "resolvido"
    t.date     "dataFechamento"
    t.integer  "modeloContrato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contratos_prestacao_servico", ["cliente_id"], name: "index_contratos_prestacao_servico_on_cliente_id", using: :btree
  add_index "contratos_prestacao_servico", ["funcionario_id"], name: "index_contratos_prestacao_servico_on_funcionario_id", using: :btree
  add_index "contratos_prestacao_servico", ["imovel_id"], name: "index_contratos_prestacao_servico_on_imovel_id", using: :btree
  add_index "contratos_prestacao_servico", ["modeloContrato_id"], name: "index_contratos_prestacao_servico_on_modeloContrato_id", using: :btree

  create_table "departamentos", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departamentos", ["empresa_id"], name: "index_departamentos_on_empresa_id", using: :btree

  create_table "empresas", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empresas", ["cnpj"], name: "index_empresas_on_cnpj", unique: true, using: :btree

  create_table "enderecos", force: true do |t|
    t.string   "cep"
    t.integer  "rua_id"
    t.string   "numero"
    t.string   "complemento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enderecos", ["rua_id"], name: "index_enderecos_on_rua_id", using: :btree

  create_table "estados", force: true do |t|
    t.string   "nome"
    t.string   "uf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.date     "data"
    t.integer  "funcionario_id"
    t.integer  "cliente_id"
    t.string   "observacoes"
    t.integer  "imovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["cliente_id"], name: "index_feedbacks_on_cliente_id", using: :btree
  add_index "feedbacks", ["funcionario_id"], name: "index_feedbacks_on_funcionario_id", using: :btree
  add_index "feedbacks", ["imovel_id"], name: "index_feedbacks_on_imovel_id", using: :btree

  create_table "finalizacoes_chamado_reforma", force: true do |t|
    t.date     "data"
    t.integer  "funcionario_id"
    t.string   "descricaoConclusao"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "finalizacoes_chamado_reforma", ["funcionario_id"], name: "index_finalizacoes_chamado_reforma_on_funcionario_id", using: :btree

  create_table "funcionarios", force: true do |t|
    t.integer  "departamento_id"
    t.date     "dataAdmissao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["departamento_id"], name: "index_funcionarios_on_departamento_id", using: :btree

  create_table "imoveis", force: true do |t|
    t.boolean  "ativo"
    t.integer  "metragem"
    t.integer  "funcionario_id"
    t.integer  "cliente_id"
    t.integer  "tipoImovel_id"
    t.string   "observacoes"
    t.integer  "endereco_id"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imoveis", ["cliente_id"], name: "index_imoveis_on_cliente_id", using: :btree
  add_index "imoveis", ["empresa_id"], name: "index_imoveis_on_empresa_id", using: :btree
  add_index "imoveis", ["endereco_id"], name: "index_imoveis_on_endereco_id", using: :btree
  add_index "imoveis", ["funcionario_id"], name: "index_imoveis_on_funcionario_id", using: :btree
  add_index "imoveis", ["tipoImovel_id"], name: "index_imoveis_on_tipoImovel_id", using: :btree

  create_table "indices", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indices_mes", force: true do |t|
    t.integer  "indice_id"
    t.date     "data"
    t.decimal  "porcentagem", precision: 4, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "indices_mes", ["indice_id"], name: "index_indices_mes_on_indice_id", using: :btree

  create_table "itens", force: true do |t|
    t.string   "nome"
    t.boolean  "obrigatorio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itens_check_list", force: true do |t|
    t.integer  "checkList_id"
    t.string   "nome"
    t.string   "valor"
    t.boolean  "finalizado"
    t.boolean  "obrigatorio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itens_check_list", ["checkList_id"], name: "index_itens_check_list_on_checkList_id", using: :btree

  create_table "lancamentos_contabeis", force: true do |t|
    t.integer  "tipo"
    t.string   "historico"
    t.decimal  "valor",                   precision: 14, scale: 2
    t.integer  "planoConta_id"
    t.integer  "movimentacaoContabil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lancamentos_contabeis", ["movimentacaoContabil_id"], name: "index_lancamentos_contabeis_on_movimentacaoContabil_id", using: :btree
  add_index "lancamentos_contabeis", ["planoConta_id"], name: "index_lancamentos_contabeis_on_planoConta_id", using: :btree

  create_table "modelos_contrato", force: true do |t|
    t.string   "nome"
    t.integer  "empresa_id"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modelos_contrato", ["empresa_id"], name: "index_modelos_contrato_on_empresa_id", using: :btree

  create_table "movimentacoes_contabeis", force: true do |t|
    t.decimal  "valor",      precision: 12, scale: 2
    t.date     "data"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movimentacoes_contabeis", ["empresa_id"], name: "index_movimentacoes_contabeis_on_empresa_id", using: :btree

  create_table "municipios", force: true do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "municipios", ["estado_id"], name: "index_municipios_on_estado_id", using: :btree

  create_table "origens_conta", force: true do |t|
    t.string   "nome"
    t.integer  "planoConta_id"
    t.integer  "contaContraPartida_id"
    t.boolean  "ativo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "origens_conta", ["contaContraPartida_id"], name: "index_origens_conta_on_contaContraPartida_id", using: :btree
  add_index "origens_conta", ["empresa_id"], name: "index_origens_conta_on_empresa_id", using: :btree
  add_index "origens_conta", ["planoConta_id"], name: "index_origens_conta_on_planoConta_id", using: :btree

  create_table "pessoas_fisicas", force: true do |t|
    t.string   "cpf"
    t.string   "rg"
    t.string   "filiacao"
    t.integer  "estadoCivil"
    t.string   "nacionalidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoas_juridicas", force: true do |t|
    t.string   "cnpj"
    t.string   "inscricaoEstadual"
    t.integer  "pessoaFisica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pessoas_juridicas", ["pessoaFisica_id"], name: "index_pessoas_juridicas_on_pessoaFisica_id", using: :btree

  create_table "placas", force: true do |t|
    t.string   "numero"
    t.integer  "funcionario_id"
    t.integer  "empresa_id"
    t.integer  "imovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "placas", ["empresa_id"], name: "index_placas_on_empresa_id", using: :btree
  add_index "placas", ["funcionario_id"], name: "index_placas_on_funcionario_id", using: :btree
  add_index "placas", ["imovel_id"], name: "index_placas_on_imovel_id", using: :btree

  create_table "planos_conta", force: true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.integer  "tipo"
    t.boolean  "ativo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "planos_conta", ["empresa_id"], name: "index_planos_conta_on_empresa_id", using: :btree

  create_table "proposta", force: true do |t|
    t.date     "data"
    t.date     "dataFechamento"
    t.integer  "cliente_id"
    t.integer  "funcionario_id"
    t.decimal  "valor",              precision: 12, scale: 2
    t.string   "observacoes"
    t.integer  "status"
    t.integer  "proposta_id"
    t.integer  "tipoContraProposta"
    t.integer  "imovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proposta", ["cliente_id"], name: "index_proposta_on_cliente_id", using: :btree
  add_index "proposta", ["funcionario_id"], name: "index_proposta_on_funcionario_id", using: :btree
  add_index "proposta", ["imovel_id"], name: "index_proposta_on_imovel_id", using: :btree
  add_index "proposta", ["proposta_id"], name: "index_proposta_on_proposta_id", using: :btree

  create_table "reservas", force: true do |t|
    t.date     "dataReserva"
    t.date     "dataVencimento"
    t.integer  "cliente_id"
    t.integer  "funcionario_id"
    t.decimal  "valor",          precision: 12, scale: 2
    t.string   "observacoes"
    t.integer  "imovel_id"
    t.boolean  "resolvido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservas", ["cliente_id"], name: "index_reservas_on_cliente_id", using: :btree
  add_index "reservas", ["funcionario_id"], name: "index_reservas_on_funcionario_id", using: :btree
  add_index "reservas", ["imovel_id"], name: "index_reservas_on_imovel_id", using: :btree

  create_table "ruas", force: true do |t|
    t.string   "nome"
    t.integer  "bairro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ruas", ["bairro_id"], name: "index_ruas_on_bairro_id", using: :btree

  create_table "tipos_ativo", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo",      default: true, null: false
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipos_ativo", ["empresa_id"], name: "index_tipos_ativo_on_empresa_id", using: :btree

  create_table "tipos_comodo", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo",      default: true, null: false
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipos_comodo", ["empresa_id"], name: "index_tipos_comodo_on_empresa_id", using: :btree

  create_table "tipos_imovel_tipos_comodo", force: true do |t|
    t.integer  "tipoImovel_id"
    t.integer  "tipoComodo_id"
    t.boolean  "preSelecionado", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipos_imovel_tipos_comodo", ["tipoComodo_id"], name: "index_tipos_imovel_tipos_comodo_on_tipoComodo_id", using: :btree
  add_index "tipos_imovel_tipos_comodo", ["tipoImovel_id"], name: "index_tipos_imovel_tipos_comodo_on_tipoImovel_id", using: :btree

  create_table "vendas_alugueis", force: true do |t|
    t.integer  "contratoPrestacaoServico_id"
    t.integer  "modeloContrato_id"
    t.integer  "cliente_id"
    t.integer  "funcionario_id"
    t.decimal  "valor",                       precision: 12, scale: 2
    t.date     "dataAssinaturaContrato"
    t.string   "type"
    t.integer  "proprietario_id"
    t.boolean  "fechado"
    t.date     "dataVencimento"
    t.integer  "indice_id"
    t.boolean  "resolvido"
    t.date     "dataFechamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendas_alugueis", ["cliente_id"], name: "index_vendas_alugueis_on_cliente_id", using: :btree
  add_index "vendas_alugueis", ["contratoPrestacaoServico_id"], name: "index_vendas_alugueis_on_contratoPrestacaoServico_id", using: :btree
  add_index "vendas_alugueis", ["funcionario_id"], name: "index_vendas_alugueis_on_funcionario_id", using: :btree
  add_index "vendas_alugueis", ["indice_id"], name: "index_vendas_alugueis_on_indice_id", using: :btree
  add_index "vendas_alugueis", ["modeloContrato_id"], name: "index_vendas_alugueis_on_modeloContrato_id", using: :btree
  add_index "vendas_alugueis", ["proprietario_id"], name: "index_vendas_alugueis_on_proprietario_id", using: :btree

  create_table "vistorias", force: true do |t|
    t.date     "data"
    t.integer  "funcionario_id"
    t.string   "observacoes"
    t.integer  "vendaAluguel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vistorias", ["funcionario_id"], name: "index_vistorias_on_funcionario_id", using: :btree
  add_index "vistorias", ["vendaAluguel_id"], name: "index_vistorias_on_vendaAluguel_id", using: :btree

end
