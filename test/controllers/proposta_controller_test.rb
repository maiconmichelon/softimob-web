require 'test_helper'

class PropostaControllerTest < ActionController::TestCase
  setup do
    @propostum = proposta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propostum" do
    assert_difference('Propostum.count') do
      post :create, propostum: { cliente_id: @propostum.cliente_id, data: @propostum.data, dataFechamento: @propostum.dataFechamento, funcionario_id: @propostum.funcionario_id, imovel_id: @propostum.imovel_id, observacoes: @propostum.observacoes, proposta_id: @propostum.proposta_id, status: @propostum.status, tipoContraProposta: @propostum.tipoContraProposta, valor: @propostum.valor, valor: @propostum.valor }
    end

    assert_redirected_to propostum_path(assigns(:propostum))
  end

  test "should show propostum" do
    get :show, id: @propostum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propostum
    assert_response :success
  end

  test "should update propostum" do
    patch :update, id: @propostum, propostum: { cliente_id: @propostum.cliente_id, data: @propostum.data, dataFechamento: @propostum.dataFechamento, funcionario_id: @propostum.funcionario_id, imovel_id: @propostum.imovel_id, observacoes: @propostum.observacoes, proposta_id: @propostum.proposta_id, status: @propostum.status, tipoContraProposta: @propostum.tipoContraProposta, valor: @propostum.valor, valor: @propostum.valor }
    assert_redirected_to propostum_path(assigns(:propostum))
  end

  test "should destroy propostum" do
    assert_difference('Propostum.count', -1) do
      delete :destroy, id: @propostum
    end

    assert_redirected_to proposta_path
  end
end
