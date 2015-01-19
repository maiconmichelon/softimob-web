require 'test_helper'

class CheckListsControllerTest < ActionController::TestCase
  setup do
    @check_list = check_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_list" do
    assert_difference('CheckList.count') do
      post :create, check_list: { ativo: @check_list.ativo, empresa_id: @check_list.empresa_id, nome: @check_list.nome }
    end

    assert_redirected_to check_list_path(assigns(:check_list))
  end

  test "should show check_list" do
    get :show, id: @check_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check_list
    assert_response :success
  end

  test "should update check_list" do
    patch :update, id: @check_list, check_list: { ativo: @check_list.ativo, empresa_id: @check_list.empresa_id, nome: @check_list.nome }
    assert_redirected_to check_list_path(assigns(:check_list))
  end

  test "should destroy check_list" do
    assert_difference('CheckList.count', -1) do
      delete :destroy, id: @check_list
    end

    assert_redirected_to check_lists_path
  end
end
