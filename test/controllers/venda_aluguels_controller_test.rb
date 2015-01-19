require 'test_helper'

class VendaAluguelsControllerTest < ActionController::TestCase
  setup do
    @venda_aluguel = venda_aluguels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venda_aluguels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venda_aluguel" do
    assert_difference('VendaAluguel.count') do
      post :create, venda_aluguel: { cliente_id: @venda_aluguel.cliente_id, contratoPrestacaoServico_id: @venda_aluguel.contratoPrestacaoServico_id, dataAssinaturaContrato: @venda_aluguel.dataAssinaturaContrato, funcionario_id: @venda_aluguel.funcionario_id, modeloContrato_id: @venda_aluguel.modeloContrato_id, valor: @venda_aluguel.valor, valor: @venda_aluguel.valor }
    end

    assert_redirected_to venda_aluguel_path(assigns(:venda_aluguel))
  end

  test "should show venda_aluguel" do
    get :show, id: @venda_aluguel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venda_aluguel
    assert_response :success
  end

  test "should update venda_aluguel" do
    patch :update, id: @venda_aluguel, venda_aluguel: { cliente_id: @venda_aluguel.cliente_id, contratoPrestacaoServico_id: @venda_aluguel.contratoPrestacaoServico_id, dataAssinaturaContrato: @venda_aluguel.dataAssinaturaContrato, funcionario_id: @venda_aluguel.funcionario_id, modeloContrato_id: @venda_aluguel.modeloContrato_id, valor: @venda_aluguel.valor, valor: @venda_aluguel.valor }
    assert_redirected_to venda_aluguel_path(assigns(:venda_aluguel))
  end

  test "should destroy venda_aluguel" do
    assert_difference('VendaAluguel.count', -1) do
      delete :destroy, id: @venda_aluguel
    end

    assert_redirected_to venda_aluguels_path
  end
end
