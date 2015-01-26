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

ActiveRecord::Schema.define(version: 20150124205716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acontecimentos_chamado", force: true do |t|
    t.date     "data",               null: false
    t.integer  "funcionario_id"
    t.string   "descricao"
    t.integer  "chamado_reforma_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acontecimentos_chamado", ["chamado_reforma_id"], name: "index_acontecimentos_chamado_on_chamado_reforma_id", using: :btree
  add_index "acontecimentos_chamado", ["funcionario_id"], name: "index_acontecimentos_chamado_on_funcionario_id", using: :btree

  create_table "bairros", force: true do |t|
    t.string   "nome",         null: false
    t.integer  "municipio_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bairros", ["municipio_id"], name: "index_bairros_on_municipio_id", using: :btree

  create_table "chamados_reforma", force: true do |t|
    t.integer  "aluguel_id",                   null: false
    t.date     "data",                         null: false
    t.integer  "funcionario_id"
    t.string   "problema",                     null: false
    t.integer  "finalizacaoChamadoReforma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chamados_reforma", ["aluguel_id"], name: "index_chamados_reforma_on_aluguel_id", using: :btree
  add_index "chamados_reforma", ["finalizacaoChamadoReforma_id"], name: "index_chamados_reforma_on_finalizacaoChamadoReforma_id", using: :btree
  add_index "chamados_reforma", ["funcionario_id"], name: "index_chamados_reforma_on_funcionario_id", using: :btree

  create_table "chaves", force: true do |t|
    t.string   "numero"
    t.integer  "imovel_id",                  null: false
    t.integer  "localizacao",                null: false
    t.boolean  "ativo",       default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chaves", ["imovel_id"], name: "index_chaves_on_imovel_id", using: :btree

  create_table "check_lists", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo",      default: true, null: false
    t.integer  "empresa_id", default: 1,    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "check_lists", ["empresa_id"], name: "index_check_lists_on_empresa_id", using: :btree

  create_table "comissionados", force: true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.date     "dataNascimento"
    t.boolean  "ativo",                default: true, null: false
    t.integer  "endereco_id",                         null: false
    t.integer  "empresa_id",           default: 1,    null: false
    t.integer  "departamento_id"
    t.date     "dataAdmissao"
    t.string   "cpf"
    t.string   "rg"
    t.string   "filiacao"
    t.integer  "estadoCivil"
    t.string   "nacionalidade"
    t.string   "cnpj"
    t.string   "inscricaoEstadual"
    t.integer  "socioProprietario_id"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comissionados", ["departamento_id"], name: "index_comissionados_on_departamento_id", using: :btree
  add_index "comissionados", ["empresa_id"], name: "index_comissionados_on_empresa_id", using: :btree
  add_index "comissionados", ["endereco_id"], name: "index_comissionados_on_endereco_id", using: :btree
  add_index "comissionados", ["socioProprietario_id"], name: "index_comissionados_on_socioProprietario_id", using: :btree

  create_table "comodos", force: true do |t|
    t.integer  "tipoComodo_id", null: false
    t.integer  "quantidade",    null: false
    t.string   "descricao"
    t.integer  "imovel_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comodos", ["imovel_id"], name: "index_comodos_on_imovel_id", using: :btree
  add_index "comodos", ["tipoComodo_id"], name: "index_comodos_on_tipoComodo_id", using: :btree

  create_table "contratos_prestacao_servico", force: true do |t|
    t.decimal  "valorImovel",       precision: 12, scale: 4
    t.integer  "tipo",                                                       null: false
    t.integer  "imovel_id",                                                  null: false
    t.boolean  "divulgar",                                   default: true,  null: false
    t.date     "dataInicio",                                                 null: false
    t.date     "dataVencimento",                                             null: false
    t.integer  "funcionario_id",                                             null: false
    t.integer  "cliente_id",                                                 null: false
    t.boolean  "resolvido",                                  default: false, null: false
    t.date     "dataFechamento",                                             null: false
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
    t.boolean  "ativo",      default: true, null: false
    t.integer  "empresa_id", default: 1,    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departamentos", ["empresa_id"], name: "index_departamentos_on_empresa_id", using: :btree

  create_table "empresas", force: true do |t|
    t.string   "razaoSocial"
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
    t.string   "nome",                   null: false
    t.string   "uf",                     null: false
    t.integer  "empresa_id", default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estados", ["empresa_id"], name: "index_estados_on_empresa_id", using: :btree

  create_table "feedbacks", force: true do |t|
    t.date     "data",           null: false
    t.integer  "funcionario_id"
    t.integer  "cliente_id",     null: false
    t.string   "observacoes"
    t.integer  "imovel_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["cliente_id"], name: "index_feedbacks_on_cliente_id", using: :btree
  add_index "feedbacks", ["funcionario_id"], name: "index_feedbacks_on_funcionario_id", using: :btree
  add_index "feedbacks", ["imovel_id"], name: "index_feedbacks_on_imovel_id", using: :btree

  create_table "finalizacoes_chamado_reforma", force: true do |t|
    t.date     "data",               null: false
    t.integer  "responsavel_id"
    t.string   "descricaoConclusao", null: false
    t.integer  "status",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "finalizacoes_chamado_reforma", ["responsavel_id"], name: "index_finalizacoes_chamado_reforma_on_responsavel_id", using: :btree

  create_table "imoveis", force: true do |t|
    t.boolean  "ativo",           default: true, null: false
    t.integer  "metragem",                       null: false
    t.integer  "angariador_id"
    t.integer  "proprietario_id",                null: false
    t.integer  "tipoImovel_id",                  null: false
    t.string   "observacoes"
    t.integer  "endereco_id",                    null: false
    t.integer  "empresa_id",      default: 1,    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imoveis", ["angariador_id"], name: "index_imoveis_on_angariador_id", using: :btree
  add_index "imoveis", ["empresa_id"], name: "index_imoveis_on_empresa_id", using: :btree
  add_index "imoveis", ["endereco_id"], name: "index_imoveis_on_endereco_id", using: :btree
  add_index "imoveis", ["proprietario_id"], name: "index_imoveis_on_proprietario_id", using: :btree
  add_index "imoveis", ["tipoImovel_id"], name: "index_imoveis_on_tipoImovel_id", using: :btree

  create_table "itens", force: true do |t|
    t.string   "nome"
    t.boolean  "obrigatorio",   default: true, null: false
    t.integer  "check_list_id",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itens", ["check_list_id"], name: "index_itens_on_check_list_id", using: :btree

  create_table "itens_check_list", force: true do |t|
    t.string   "nome",                       null: false
    t.string   "valor",                      null: false
    t.boolean  "finalizado", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelos_contrato", force: true do |t|
    t.string   "nome"
    t.integer  "empresa_id", default: 1
    t.boolean  "ativo",      default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modelos_contrato", ["empresa_id"], name: "index_modelos_contrato_on_empresa_id", using: :btree

  create_table "municipios", force: true do |t|
    t.string   "nome",       null: false
    t.integer  "estado_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "municipios", ["estado_id"], name: "index_municipios_on_estado_id", using: :btree

  create_table "placas", force: true do |t|
    t.string   "numero"
    t.integer  "responsavel_id"
    t.integer  "empresa_id",     default: 1,    null: false
    t.integer  "imovel_id"
    t.boolean  "ativo",          default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "placas", ["empresa_id"], name: "index_placas_on_empresa_id", using: :btree
  add_index "placas", ["imovel_id"], name: "index_placas_on_imovel_id", using: :btree
  add_index "placas", ["responsavel_id"], name: "index_placas_on_responsavel_id", using: :btree

  create_table "proposta", force: true do |t|
    t.date     "data",                                        null: false
    t.date     "dataFechamento"
    t.integer  "cliente_id",                                  null: false
    t.integer  "funcionario_id",                              null: false
    t.decimal  "valor",              precision: 12, scale: 2, null: false
    t.string   "observacoes"
    t.integer  "status",                                      null: false
    t.integer  "proposta_id"
    t.integer  "tipoContraProposta"
    t.integer  "imovel_id",                                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proposta", ["cliente_id"], name: "index_proposta_on_cliente_id", using: :btree
  add_index "proposta", ["funcionario_id"], name: "index_proposta_on_funcionario_id", using: :btree
  add_index "proposta", ["imovel_id"], name: "index_proposta_on_imovel_id", using: :btree
  add_index "proposta", ["proposta_id"], name: "index_proposta_on_proposta_id", using: :btree

  create_table "reservas", force: true do |t|
    t.date     "dataReserva",                                             null: false
    t.date     "dataVencimento",                                          null: false
    t.integer  "cliente_id",                                              null: false
    t.integer  "angariador_id"
    t.decimal  "valor",          precision: 12, scale: 2,                 null: false
    t.string   "observacoes"
    t.integer  "imovel_id",                                               null: false
    t.boolean  "resolvido",                               default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservas", ["angariador_id"], name: "index_reservas_on_angariador_id", using: :btree
  add_index "reservas", ["cliente_id"], name: "index_reservas_on_cliente_id", using: :btree
  add_index "reservas", ["imovel_id"], name: "index_reservas_on_imovel_id", using: :btree

  create_table "ruas", force: true do |t|
    t.string   "nome",       null: false
    t.integer  "bairro_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ruas", ["bairro_id"], name: "index_ruas_on_bairro_id", using: :btree

  create_table "tipos_comodo", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo",      default: true, null: false
    t.integer  "empresa_id", default: 1,    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipos_comodo", ["empresa_id"], name: "index_tipos_comodo_on_empresa_id", using: :btree

  create_table "tipos_imovel", force: true do |t|
    t.string   "nome"
    t.boolean  "ativo",      default: true, null: false
    t.integer  "empresa_id", default: 1,    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipos_imovel", ["empresa_id"], name: "index_tipos_imovel_on_empresa_id", using: :btree

  create_table "tipos_imovel_tipos_comodo", force: true do |t|
    t.integer  "tipoImovel_id",                 null: false
    t.integer  "tipoComodo_id",                 null: false
    t.boolean  "preSelecionado", default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipos_imovel_tipos_comodo", ["tipoComodo_id"], name: "index_tipos_imovel_tipos_comodo_on_tipoComodo_id", using: :btree
  add_index "tipos_imovel_tipos_comodo", ["tipoImovel_id"], name: "index_tipos_imovel_tipos_comodo_on_tipoImovel_id", using: :btree

  create_table "vendas_alugueis", force: true do |t|
    t.integer  "contratoPrestacaoServico_id"
    t.integer  "modeloContrato_id"
    t.integer  "cliente_id"
    t.integer  "funcionario_id",                                       null: false
    t.decimal  "valor",                       precision: 12, scale: 2, null: false
    t.date     "dataAssinaturaContrato",                               null: false
    t.string   "type",                                                 null: false
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

  create_table "vendas_alugueis_itens_check_list", force: true do |t|
    t.integer "venda_aluguel_id",   null: false
    t.integer "item_check_list_id", null: false
  end

  add_index "vendas_alugueis_itens_check_list", ["item_check_list_id"], name: "index_vendas_alugueis_itens_check_list_on_item_check_list_id", using: :btree
  add_index "vendas_alugueis_itens_check_list", ["venda_aluguel_id"], name: "index_vendas_alugueis_itens_check_list_on_venda_aluguel_id", using: :btree

  create_table "vistorias", force: true do |t|
    t.date     "data",            null: false
    t.integer  "funcionario_id"
    t.string   "observacoes"
    t.integer  "vendaAluguel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vistorias", ["funcionario_id"], name: "index_vistorias_on_funcionario_id", using: :btree
  add_index "vistorias", ["vendaAluguel_id"], name: "index_vistorias_on_vendaAluguel_id", using: :btree

  create_table "vistorias_itens_check_list", force: true do |t|
    t.integer "vistoria_id",        null: false
    t.integer "item_check_list_id", null: false
  end

  add_index "vistorias_itens_check_list", ["item_check_list_id"], name: "index_vistorias_itens_check_list_on_item_check_list_id", using: :btree
  add_index "vistorias_itens_check_list", ["vistoria_id"], name: "index_vistorias_itens_check_list_on_vistoria_id", using: :btree

end
