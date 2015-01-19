require 'test_helper'

class FinalizacaoChamadoReformasControllerTest < ActionController::TestCase
  setup do
    @finalizacao_chamado_reforma = finalizacao_chamado_reformas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finalizacao_chamado_reformas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finalizacao_chamado_reforma" do
    assert_difference('FinalizacaoChamadoReforma.count') do
      post :create, finalizacao_chamado_reforma: { data: @finalizacao_chamado_reforma.data, descricaoConclusao: @finalizacao_chamado_reforma.descricaoConclusao, funcionario_id: @finalizacao_chamado_reforma.funcionario_id, status: @finalizacao_chamado_reforma.status }
    end

    assert_redirected_to finalizacao_chamado_reforma_path(assigns(:finalizacao_chamado_reforma))
  end

  test "should show finalizacao_chamado_reforma" do
    get :show, id: @finalizacao_chamado_reforma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finalizacao_chamado_reforma
    assert_response :success
  end

  test "should update finalizacao_chamado_reforma" do
    patch :update, id: @finalizacao_chamado_reforma, finalizacao_chamado_reforma: { data: @finalizacao_chamado_reforma.data, descricaoConclusao: @finalizacao_chamado_reforma.descricaoConclusao, funcionario_id: @finalizacao_chamado_reforma.funcionario_id, status: @finalizacao_chamado_reforma.status }
    assert_redirected_to finalizacao_chamado_reforma_path(assigns(:finalizacao_chamado_reforma))
  end

  test "should destroy finalizacao_chamado_reforma" do
    assert_difference('FinalizacaoChamadoReforma.count', -1) do
      delete :destroy, id: @finalizacao_chamado_reforma
    end

    assert_redirected_to finalizacao_chamado_reformas_path
  end
end
