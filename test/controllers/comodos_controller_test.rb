require 'test_helper'

class ComodosControllerTest < ActionController::TestCase
  setup do
    @comodo = comodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comodo" do
    assert_difference('Comodo.count') do
      post :create, comodo: { descricao: @comodo.descricao, imovel_id: @comodo.imovel_id, quantidade: @comodo.quantidade, tipoComodo_id: @comodo.tipoComodo_id }
    end

    assert_redirected_to comodo_path(assigns(:comodo))
  end

  test "should show comodo" do
    get :show, id: @comodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comodo
    assert_response :success
  end

  test "should update comodo" do
    patch :update, id: @comodo, comodo: { descricao: @comodo.descricao, imovel_id: @comodo.imovel_id, quantidade: @comodo.quantidade, tipoComodo_id: @comodo.tipoComodo_id }
    assert_redirected_to comodo_path(assigns(:comodo))
  end

  test "should destroy comodo" do
    assert_difference('Comodo.count', -1) do
      delete :destroy, id: @comodo
    end

    assert_redirected_to comodos_path
  end
end
