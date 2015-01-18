require 'test_helper'

class TipoAtivosControllerTest < ActionController::TestCase
  setup do
    @tipo_ativo = tipo_ativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_ativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_ativo" do
    assert_difference('TipoAtivo.count') do
      post :create, tipo_ativo: { ativo: @tipo_ativo.ativo, nome: @tipo_ativo.nome }
    end

    assert_redirected_to tipo_ativo_path(assigns(:tipo_ativo))
  end

  test "should show tipo_ativo" do
    get :show, id: @tipo_ativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_ativo
    assert_response :success
  end

  test "should update tipo_ativo" do
    patch :update, id: @tipo_ativo, tipo_ativo: { ativo: @tipo_ativo.ativo, nome: @tipo_ativo.nome }
    assert_redirected_to tipo_ativo_path(assigns(:tipo_ativo))
  end

  test "should destroy tipo_ativo" do
    assert_difference('TipoAtivo.count', -1) do
      delete :destroy, id: @tipo_ativo
    end

    assert_redirected_to tipo_ativos_path
  end
end
