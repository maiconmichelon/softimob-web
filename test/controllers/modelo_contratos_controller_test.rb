require 'test_helper'

class ModeloContratosControllerTest < ActionController::TestCase
  setup do
    @modelo_contrato = modelo_contratos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modelo_contratos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modelo_contrato" do
    assert_difference('ModeloContrato.count') do
      post :create, modelo_contrato: { ativo: @modelo_contrato.ativo, empresa_id: @modelo_contrato.empresa_id, nome: @modelo_contrato.nome }
    end

    assert_redirected_to modelo_contrato_path(assigns(:modelo_contrato))
  end

  test "should show modelo_contrato" do
    get :show, id: @modelo_contrato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modelo_contrato
    assert_response :success
  end

  test "should update modelo_contrato" do
    patch :update, id: @modelo_contrato, modelo_contrato: { ativo: @modelo_contrato.ativo, empresa_id: @modelo_contrato.empresa_id, nome: @modelo_contrato.nome }
    assert_redirected_to modelo_contrato_path(assigns(:modelo_contrato))
  end

  test "should destroy modelo_contrato" do
    assert_difference('ModeloContrato.count', -1) do
      delete :destroy, id: @modelo_contrato
    end

    assert_redirected_to modelo_contratos_path
  end
end
