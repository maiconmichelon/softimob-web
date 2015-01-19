require 'test_helper'

class PlanoContaControllerTest < ActionController::TestCase
  setup do
    @plano_contum = plano_conta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plano_conta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plano_contum" do
    assert_difference('PlanoContum.count') do
      post :create, plano_contum: { ativo: @plano_contum.ativo, codigo: @plano_contum.codigo, empresa_id: @plano_contum.empresa_id, nome: @plano_contum.nome, tipo: @plano_contum.tipo }
    end

    assert_redirected_to plano_contum_path(assigns(:plano_contum))
  end

  test "should show plano_contum" do
    get :show, id: @plano_contum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plano_contum
    assert_response :success
  end

  test "should update plano_contum" do
    patch :update, id: @plano_contum, plano_contum: { ativo: @plano_contum.ativo, codigo: @plano_contum.codigo, empresa_id: @plano_contum.empresa_id, nome: @plano_contum.nome, tipo: @plano_contum.tipo }
    assert_redirected_to plano_contum_path(assigns(:plano_contum))
  end

  test "should destroy plano_contum" do
    assert_difference('PlanoContum.count', -1) do
      delete :destroy, id: @plano_contum
    end

    assert_redirected_to plano_conta_path
  end
end
