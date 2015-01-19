require 'test_helper'

class OrigemContaControllerTest < ActionController::TestCase
  setup do
    @origem_contum = origem_conta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:origem_conta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create origem_contum" do
    assert_difference('OrigemContum.count') do
      post :create, origem_contum: { ativo: @origem_contum.ativo, contaContraPartida_id: @origem_contum.contaContraPartida_id, empresa_id: @origem_contum.empresa_id, nome: @origem_contum.nome, planoConta_id: @origem_contum.planoConta_id }
    end

    assert_redirected_to origem_contum_path(assigns(:origem_contum))
  end

  test "should show origem_contum" do
    get :show, id: @origem_contum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @origem_contum
    assert_response :success
  end

  test "should update origem_contum" do
    patch :update, id: @origem_contum, origem_contum: { ativo: @origem_contum.ativo, contaContraPartida_id: @origem_contum.contaContraPartida_id, empresa_id: @origem_contum.empresa_id, nome: @origem_contum.nome, planoConta_id: @origem_contum.planoConta_id }
    assert_redirected_to origem_contum_path(assigns(:origem_contum))
  end

  test "should destroy origem_contum" do
    assert_difference('OrigemContum.count', -1) do
      delete :destroy, id: @origem_contum
    end

    assert_redirected_to origem_conta_path
  end
end
