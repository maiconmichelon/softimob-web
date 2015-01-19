require 'test_helper'

class IndiceMesControllerTest < ActionController::TestCase
  setup do
    @indice_me = indice_mes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indice_mes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indice_me" do
    assert_difference('IndiceMe.count') do
      post :create, indice_me: { data: @indice_me.data, indice_id: @indice_me.indice_id, porcentagem: @indice_me.porcentagem, porcentagem: @indice_me.porcentagem }
    end

    assert_redirected_to indice_me_path(assigns(:indice_me))
  end

  test "should show indice_me" do
    get :show, id: @indice_me
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indice_me
    assert_response :success
  end

  test "should update indice_me" do
    patch :update, id: @indice_me, indice_me: { data: @indice_me.data, indice_id: @indice_me.indice_id, porcentagem: @indice_me.porcentagem, porcentagem: @indice_me.porcentagem }
    assert_redirected_to indice_me_path(assigns(:indice_me))
  end

  test "should destroy indice_me" do
    assert_difference('IndiceMe.count', -1) do
      delete :destroy, id: @indice_me
    end

    assert_redirected_to indice_mes_path
  end
end
