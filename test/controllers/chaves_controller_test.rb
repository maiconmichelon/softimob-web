require 'test_helper'

class ChavesControllerTest < ActionController::TestCase
  setup do
    @chafe = chaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chafe" do
    assert_difference('Chave.count') do
      post :create, chafe: { imovel_id: @chafe.imovel_id, localizacao: @chafe.localizacao, numero: @chafe.numero }
    end

    assert_redirected_to chafe_path(assigns(:chafe))
  end

  test "should show chafe" do
    get :show, id: @chafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chafe
    assert_response :success
  end

  test "should update chafe" do
    patch :update, id: @chafe, chafe: { imovel_id: @chafe.imovel_id, localizacao: @chafe.localizacao, numero: @chafe.numero }
    assert_redirected_to chafe_path(assigns(:chafe))
  end

  test "should destroy chafe" do
    assert_difference('Chave.count', -1) do
      delete :destroy, id: @chafe
    end

    assert_redirected_to chaves_path
  end
end
