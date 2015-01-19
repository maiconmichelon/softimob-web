require 'test_helper'

class ContratoPrestacaoServicosControllerTest < ActionController::TestCase
  setup do
    @contrato_prestacao_servico = contrato_prestacao_servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contrato_prestacao_servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contrato_prestacao_servico" do
    assert_difference('ContratoPrestacaoServico.count') do
      post :create, contrato_prestacao_servico: { cliente_id: @contrato_prestacao_servico.cliente_id, dataFechamento: @contrato_prestacao_servico.dataFechamento, dataInicio: @contrato_prestacao_servico.dataInicio, dataVencimento: @contrato_prestacao_servico.dataVencimento, divulgar: @contrato_prestacao_servico.divulgar, funcionario_id: @contrato_prestacao_servico.funcionario_id, imovel_id: @contrato_prestacao_servico.imovel_id, modeloContrato_id: @contrato_prestacao_servico.modeloContrato_id, resolvido: @contrato_prestacao_servico.resolvido, tipo: @contrato_prestacao_servico.tipo, valorImovel: @contrato_prestacao_servico.valorImovel, valorImovel: @contrato_prestacao_servico.valorImovel }
    end

    assert_redirected_to contrato_prestacao_servico_path(assigns(:contrato_prestacao_servico))
  end

  test "should show contrato_prestacao_servico" do
    get :show, id: @contrato_prestacao_servico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contrato_prestacao_servico
    assert_response :success
  end

  test "should update contrato_prestacao_servico" do
    patch :update, id: @contrato_prestacao_servico, contrato_prestacao_servico: { cliente_id: @contrato_prestacao_servico.cliente_id, dataFechamento: @contrato_prestacao_servico.dataFechamento, dataInicio: @contrato_prestacao_servico.dataInicio, dataVencimento: @contrato_prestacao_servico.dataVencimento, divulgar: @contrato_prestacao_servico.divulgar, funcionario_id: @contrato_prestacao_servico.funcionario_id, imovel_id: @contrato_prestacao_servico.imovel_id, modeloContrato_id: @contrato_prestacao_servico.modeloContrato_id, resolvido: @contrato_prestacao_servico.resolvido, tipo: @contrato_prestacao_servico.tipo, valorImovel: @contrato_prestacao_servico.valorImovel, valorImovel: @contrato_prestacao_servico.valorImovel }
    assert_redirected_to contrato_prestacao_servico_path(assigns(:contrato_prestacao_servico))
  end

  test "should destroy contrato_prestacao_servico" do
    assert_difference('ContratoPrestacaoServico.count', -1) do
      delete :destroy, id: @contrato_prestacao_servico
    end

    assert_redirected_to contrato_prestacao_servicos_path
  end
end
