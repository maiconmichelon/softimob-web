require 'test_helper'

class ItemCheckListsControllerTest < ActionController::TestCase
  setup do
    @item_check_list = item_check_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_check_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_check_list" do
    assert_difference('ItemCheckList.count') do
      post :create, item_check_list: { checkList_id: @item_check_list.checkList_id, finalizado: @item_check_list.finalizado, nome: @item_check_list.nome, obrigatorio: @item_check_list.obrigatorio, valor: @item_check_list.valor }
    end

    assert_redirected_to item_check_list_path(assigns(:item_check_list))
  end

  test "should show item_check_list" do
    get :show, id: @item_check_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_check_list
    assert_response :success
  end

  test "should update item_check_list" do
    patch :update, id: @item_check_list, item_check_list: { checkList_id: @item_check_list.checkList_id, finalizado: @item_check_list.finalizado, nome: @item_check_list.nome, obrigatorio: @item_check_list.obrigatorio, valor: @item_check_list.valor }
    assert_redirected_to item_check_list_path(assigns(:item_check_list))
  end

  test "should destroy item_check_list" do
    assert_difference('ItemCheckList.count', -1) do
      delete :destroy, id: @item_check_list
    end

    assert_redirected_to item_check_lists_path
  end
end
