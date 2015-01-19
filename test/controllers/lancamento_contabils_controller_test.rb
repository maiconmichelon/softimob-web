require 'test_helper'

class LancamentoContabilsControllerTest < ActionController::TestCase
  setup do
    @lancamento_contabil = lancamento_contabils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lancamento_contabils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lancamento_contabil" do
    assert_difference('LancamentoContabil.count') do
      post :create, lancamento_contabil: { historico: @lancamento_contabil.historico, movimentacaoContabil_id: @lancamento_contabil.movimentacaoContabil_id, planoConta_id: @lancamento_contabil.planoConta_id, tipo: @lancamento_contabil.tipo, valor: @lancamento_contabil.valor, valor: @lancamento_contabil.valor }
    end

    assert_redirected_to lancamento_contabil_path(assigns(:lancamento_contabil))
  end

  test "should show lancamento_contabil" do
    get :show, id: @lancamento_contabil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lancamento_contabil
    assert_response :success
  end

  test "should update lancamento_contabil" do
    patch :update, id: @lancamento_contabil, lancamento_contabil: { historico: @lancamento_contabil.historico, movimentacaoContabil_id: @lancamento_contabil.movimentacaoContabil_id, planoConta_id: @lancamento_contabil.planoConta_id, tipo: @lancamento_contabil.tipo, valor: @lancamento_contabil.valor, valor: @lancamento_contabil.valor }
    assert_redirected_to lancamento_contabil_path(assigns(:lancamento_contabil))
  end

  test "should destroy lancamento_contabil" do
    assert_difference('LancamentoContabil.count', -1) do
      delete :destroy, id: @lancamento_contabil
    end

    assert_redirected_to lancamento_contabils_path
  end
end
