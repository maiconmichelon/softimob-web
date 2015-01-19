require 'test_helper'

class ContaPagarRecebersControllerTest < ActionController::TestCase
  setup do
    @conta_pagar_receber = conta_pagar_recebers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conta_pagar_recebers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta_pagar_receber" do
    assert_difference('ContaPagarReceber.count') do
      post :create, conta_pagar_receber: { OrigemConta_id: @conta_pagar_receber.OrigemConta_id, dataConta: @conta_pagar_receber.dataConta, dataPagamento: @conta_pagar_receber.dataPagamento, dataVencimento: @conta_pagar_receber.dataVencimento, movimentacaoContabil_id: @conta_pagar_receber.movimentacaoContabil_id, observacoes: @conta_pagar_receber.observacoes, tipo: @conta_pagar_receber.tipo, valor: @conta_pagar_receber.valor, valor: @conta_pagar_receber.valor, valorJurosDesconto: @conta_pagar_receber.valorJurosDesconto, valorJurosDesconto: @conta_pagar_receber.valorJurosDesconto }
    end

    assert_redirected_to conta_pagar_receber_path(assigns(:conta_pagar_receber))
  end

  test "should show conta_pagar_receber" do
    get :show, id: @conta_pagar_receber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conta_pagar_receber
    assert_response :success
  end

  test "should update conta_pagar_receber" do
    patch :update, id: @conta_pagar_receber, conta_pagar_receber: { OrigemConta_id: @conta_pagar_receber.OrigemConta_id, dataConta: @conta_pagar_receber.dataConta, dataPagamento: @conta_pagar_receber.dataPagamento, dataVencimento: @conta_pagar_receber.dataVencimento, movimentacaoContabil_id: @conta_pagar_receber.movimentacaoContabil_id, observacoes: @conta_pagar_receber.observacoes, tipo: @conta_pagar_receber.tipo, valor: @conta_pagar_receber.valor, valor: @conta_pagar_receber.valor, valorJurosDesconto: @conta_pagar_receber.valorJurosDesconto, valorJurosDesconto: @conta_pagar_receber.valorJurosDesconto }
    assert_redirected_to conta_pagar_receber_path(assigns(:conta_pagar_receber))
  end

  test "should destroy conta_pagar_receber" do
    assert_difference('ContaPagarReceber.count', -1) do
      delete :destroy, id: @conta_pagar_receber
    end

    assert_redirected_to conta_pagar_recebers_path
  end
end
