require 'test_helper'

class ComissionadosControllerTest < ActionController::TestCase
  setup do
    @comissionado = comissionados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comissionados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comissionado" do
    assert_difference('Comissionado.count') do
      post :create, comissionado: { ativo: @comissionado.ativo, celular: @comissionado.celular, dataNascimento: @comissionado.dataNascimento, email: @comissionado.email, empresa_id: @comissionado.empresa_id, endereco_id: @comissionado.endereco_id, nome: @comissionado.nome, telefone: @comissionado.telefone }
    end

    assert_redirected_to comissionado_path(assigns(:comissionado))
  end

  test "should show comissionado" do
    get :show, id: @comissionado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comissionado
    assert_response :success
  end

  test "should update comissionado" do
    patch :update, id: @comissionado, comissionado: { ativo: @comissionado.ativo, celular: @comissionado.celular, dataNascimento: @comissionado.dataNascimento, email: @comissionado.email, empresa_id: @comissionado.empresa_id, endereco_id: @comissionado.endereco_id, nome: @comissionado.nome, telefone: @comissionado.telefone }
    assert_redirected_to comissionado_path(assigns(:comissionado))
  end

  test "should destroy comissionado" do
    assert_difference('Comissionado.count', -1) do
      delete :destroy, id: @comissionado
    end

    assert_redirected_to comissionados_path
  end
end
