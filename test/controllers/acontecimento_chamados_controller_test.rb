require 'test_helper'

class AcontecimentoChamadosControllerTest < ActionController::TestCase
  setup do
    @acontecimento_chamado = acontecimento_chamados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acontecimento_chamados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acontecimento_chamado" do
    assert_difference('AcontecimentoChamado.count') do
      post :create, acontecimento_chamado: { data: @acontecimento_chamado.data, descricao: @acontecimento_chamado.descricao, funcionario_id: @acontecimento_chamado.funcionario_id }
    end

    assert_redirected_to acontecimento_chamado_path(assigns(:acontecimento_chamado))
  end

  test "should show acontecimento_chamado" do
    get :show, id: @acontecimento_chamado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acontecimento_chamado
    assert_response :success
  end

  test "should update acontecimento_chamado" do
    patch :update, id: @acontecimento_chamado, acontecimento_chamado: { data: @acontecimento_chamado.data, descricao: @acontecimento_chamado.descricao, funcionario_id: @acontecimento_chamado.funcionario_id }
    assert_redirected_to acontecimento_chamado_path(assigns(:acontecimento_chamado))
  end

  test "should destroy acontecimento_chamado" do
    assert_difference('AcontecimentoChamado.count', -1) do
      delete :destroy, id: @acontecimento_chamado
    end

    assert_redirected_to acontecimento_chamados_path
  end
end
