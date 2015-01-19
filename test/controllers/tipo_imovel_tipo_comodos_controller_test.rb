require 'test_helper'

class TipoImovelTipoComodosControllerTest < ActionController::TestCase
  setup do
    @tipo_imovel_tipo_comodo = tipo_imovel_tipo_comodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_imovel_tipo_comodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_imovel_tipo_comodo" do
    assert_difference('TipoImovelTipoComodo.count') do
      post :create, tipo_imovel_tipo_comodo: { preSelecionado: @tipo_imovel_tipo_comodo.preSelecionado, tipoComodo_id: @tipo_imovel_tipo_comodo.tipoComodo_id, tipoImovel_id: @tipo_imovel_tipo_comodo.tipoImovel_id }
    end

    assert_redirected_to tipo_imovel_tipo_comodo_path(assigns(:tipo_imovel_tipo_comodo))
  end

  test "should show tipo_imovel_tipo_comodo" do
    get :show, id: @tipo_imovel_tipo_comodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_imovel_tipo_comodo
    assert_response :success
  end

  test "should update tipo_imovel_tipo_comodo" do
    patch :update, id: @tipo_imovel_tipo_comodo, tipo_imovel_tipo_comodo: { preSelecionado: @tipo_imovel_tipo_comodo.preSelecionado, tipoComodo_id: @tipo_imovel_tipo_comodo.tipoComodo_id, tipoImovel_id: @tipo_imovel_tipo_comodo.tipoImovel_id }
    assert_redirected_to tipo_imovel_tipo_comodo_path(assigns(:tipo_imovel_tipo_comodo))
  end

  test "should destroy tipo_imovel_tipo_comodo" do
    assert_difference('TipoImovelTipoComodo.count', -1) do
      delete :destroy, id: @tipo_imovel_tipo_comodo
    end

    assert_redirected_to tipo_imovel_tipo_comodos_path
  end
end
