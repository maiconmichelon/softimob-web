require 'test_helper'

class AluguelsControllerTest < ActionController::TestCase
  setup do
    @aluguel = aluguels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aluguels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aluguel" do
    assert_difference('Aluguel.count') do
      post :create, aluguel: { cliente_id: @aluguel.cliente_id, dataFechamento: @aluguel.dataFechamento, dataVencimento: @aluguel.dataVencimento, indice_id: @aluguel.indice_id, resolvido: @aluguel.resolvido }
    end

    assert_redirected_to aluguel_path(assigns(:aluguel))
  end

  test "should show aluguel" do
    get :show, id: @aluguel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aluguel
    assert_response :success
  end

  test "should update aluguel" do
    patch :update, id: @aluguel, aluguel: { cliente_id: @aluguel.cliente_id, dataFechamento: @aluguel.dataFechamento, dataVencimento: @aluguel.dataVencimento, indice_id: @aluguel.indice_id, resolvido: @aluguel.resolvido }
    assert_redirected_to aluguel_path(assigns(:aluguel))
  end

  test "should destroy aluguel" do
    assert_difference('Aluguel.count', -1) do
      delete :destroy, id: @aluguel
    end

    assert_redirected_to aluguels_path
  end
end
