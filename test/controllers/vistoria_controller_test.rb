require 'test_helper'

class VistoriaControllerTest < ActionController::TestCase
  setup do
    @vistorium = vistoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vistoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vistorium" do
    assert_difference('Vistorium.count') do
      post :create, vistorium: { data: @vistorium.data, funcionario_id: @vistorium.funcionario_id, observacoes: @vistorium.observacoes, vendaAluguel_id: @vistorium.vendaAluguel_id }
    end

    assert_redirected_to vistorium_path(assigns(:vistorium))
  end

  test "should show vistorium" do
    get :show, id: @vistorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vistorium
    assert_response :success
  end

  test "should update vistorium" do
    patch :update, id: @vistorium, vistorium: { data: @vistorium.data, funcionario_id: @vistorium.funcionario_id, observacoes: @vistorium.observacoes, vendaAluguel_id: @vistorium.vendaAluguel_id }
    assert_redirected_to vistorium_path(assigns(:vistorium))
  end

  test "should destroy vistorium" do
    assert_difference('Vistorium.count', -1) do
      delete :destroy, id: @vistorium
    end

    assert_redirected_to vistoria_path
  end
end
