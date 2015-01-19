require 'test_helper'

class ChamadoReformasControllerTest < ActionController::TestCase
  setup do
    @chamado_reforma = chamado_reformas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chamado_reformas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chamado_reforma" do
    assert_difference('ChamadoReforma.count') do
      post :create, chamado_reforma: { aluguel_id: @chamado_reforma.aluguel_id, data: @chamado_reforma.data, finalizacaoChamadoReforma_id: @chamado_reforma.finalizacaoChamadoReforma_id, funcionario_id: @chamado_reforma.funcionario_id, problema: @chamado_reforma.problema }
    end

    assert_redirected_to chamado_reforma_path(assigns(:chamado_reforma))
  end

  test "should show chamado_reforma" do
    get :show, id: @chamado_reforma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chamado_reforma
    assert_response :success
  end

  test "should update chamado_reforma" do
    patch :update, id: @chamado_reforma, chamado_reforma: { aluguel_id: @chamado_reforma.aluguel_id, data: @chamado_reforma.data, finalizacaoChamadoReforma_id: @chamado_reforma.finalizacaoChamadoReforma_id, funcionario_id: @chamado_reforma.funcionario_id, problema: @chamado_reforma.problema }
    assert_redirected_to chamado_reforma_path(assigns(:chamado_reforma))
  end

  test "should destroy chamado_reforma" do
    assert_difference('ChamadoReforma.count', -1) do
      delete :destroy, id: @chamado_reforma
    end

    assert_redirected_to chamado_reformas_path
  end
end
