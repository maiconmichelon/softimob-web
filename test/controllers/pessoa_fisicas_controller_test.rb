require 'test_helper'

class PessoaFisicasControllerTest < ActionController::TestCase
  setup do
    @pessoa_fisica = pessoa_fisicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoa_fisicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa_fisica" do
    assert_difference('PessoaFisica.count') do
      post :create, pessoa_fisica: { cpf: @pessoa_fisica.cpf, estadoCivil: @pessoa_fisica.estadoCivil, filiacao: @pessoa_fisica.filiacao, nacionalidade: @pessoa_fisica.nacionalidade, rg: @pessoa_fisica.rg }
    end

    assert_redirected_to pessoa_fisica_path(assigns(:pessoa_fisica))
  end

  test "should show pessoa_fisica" do
    get :show, id: @pessoa_fisica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa_fisica
    assert_response :success
  end

  test "should update pessoa_fisica" do
    patch :update, id: @pessoa_fisica, pessoa_fisica: { cpf: @pessoa_fisica.cpf, estadoCivil: @pessoa_fisica.estadoCivil, filiacao: @pessoa_fisica.filiacao, nacionalidade: @pessoa_fisica.nacionalidade, rg: @pessoa_fisica.rg }
    assert_redirected_to pessoa_fisica_path(assigns(:pessoa_fisica))
  end

  test "should destroy pessoa_fisica" do
    assert_difference('PessoaFisica.count', -1) do
      delete :destroy, id: @pessoa_fisica
    end

    assert_redirected_to pessoa_fisicas_path
  end
end
