require 'test_helper'

class ImovelsControllerTest < ActionController::TestCase
  setup do
    @imovel = imovels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imovels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imovel" do
    assert_difference('Imovel.count') do
      post :create, imovel: { ativo: @imovel.ativo, cliente_id: @imovel.cliente_id, empresa_id: @imovel.empresa_id, endereco_id: @imovel.endereco_id, funcionario_id: @imovel.funcionario_id, metragem: @imovel.metragem, observacoes: @imovel.observacoes, tipoImovel_id: @imovel.tipoImovel_id }
    end

    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should show imovel" do
    get :show, id: @imovel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imovel
    assert_response :success
  end

  test "should update imovel" do
    patch :update, id: @imovel, imovel: { ativo: @imovel.ativo, cliente_id: @imovel.cliente_id, empresa_id: @imovel.empresa_id, endereco_id: @imovel.endereco_id, funcionario_id: @imovel.funcionario_id, metragem: @imovel.metragem, observacoes: @imovel.observacoes, tipoImovel_id: @imovel.tipoImovel_id }
    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should destroy imovel" do
    assert_difference('Imovel.count', -1) do
      delete :destroy, id: @imovel
    end

    assert_redirected_to imovels_path
  end
end
