require 'test_helper'

class MovimentacaoContabilsControllerTest < ActionController::TestCase
  setup do
    @movimentacao_contabil = movimentacao_contabils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movimentacao_contabils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movimentacao_contabil" do
    assert_difference('MovimentacaoContabil.count') do
      post :create, movimentacao_contabil: { data: @movimentacao_contabil.data, empresa_id: @movimentacao_contabil.empresa_id, valor: @movimentacao_contabil.valor, valor: @movimentacao_contabil.valor }
    end

    assert_redirected_to movimentacao_contabil_path(assigns(:movimentacao_contabil))
  end

  test "should show movimentacao_contabil" do
    get :show, id: @movimentacao_contabil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movimentacao_contabil
    assert_response :success
  end

  test "should update movimentacao_contabil" do
    patch :update, id: @movimentacao_contabil, movimentacao_contabil: { data: @movimentacao_contabil.data, empresa_id: @movimentacao_contabil.empresa_id, valor: @movimentacao_contabil.valor, valor: @movimentacao_contabil.valor }
    assert_redirected_to movimentacao_contabil_path(assigns(:movimentacao_contabil))
  end

  test "should destroy movimentacao_contabil" do
    assert_difference('MovimentacaoContabil.count', -1) do
      delete :destroy, id: @movimentacao_contabil
    end

    assert_redirected_to movimentacao_contabils_path
  end
end
