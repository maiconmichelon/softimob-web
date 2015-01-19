require 'test_helper'

class TipoComodosControllerTest < ActionController::TestCase
  setup do
    @tipo_comodo = tipo_comodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_comodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_comodo" do
    assert_difference('TipoComodo.count') do
      post :create, tipo_comodo: { ativo: @tipo_comodo.ativo, empresa_id: @tipo_comodo.empresa_id, nome: @tipo_comodo.nome }
    end

    assert_redirected_to tipo_comodo_path(assigns(:tipo_comodo))
  end

  test "should show tipo_comodo" do
    get :show, id: @tipo_comodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_comodo
    assert_response :success
  end

  test "should update tipo_comodo" do
    patch :update, id: @tipo_comodo, tipo_comodo: { ativo: @tipo_comodo.ativo, empresa_id: @tipo_comodo.empresa_id, nome: @tipo_comodo.nome }
    assert_redirected_to tipo_comodo_path(assigns(:tipo_comodo))
  end

  test "should destroy tipo_comodo" do
    assert_difference('TipoComodo.count', -1) do
      delete :destroy, id: @tipo_comodo
    end

    assert_redirected_to tipo_comodos_path
  end
end
