require 'test_helper'

class RfinanceirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rfinanceiro = rfinanceiros(:one)
  end

  test "should get index" do
    get rfinanceiros_url
    assert_response :success
  end

  test "should get new" do
    get new_rfinanceiro_url
    assert_response :success
  end

  test "should create rfinanceiro" do
    assert_difference('Rfinanceiro.count') do
      post rfinanceiros_url, params: { rfinanceiro: { debitoTotal: @rfinanceiro.debitoTotal, id_rf: @rfinanceiro.id_rf, nome: @rfinanceiro.nome, telefone: @rfinanceiro.telefone, valorMensalidade: @rfinanceiro.valorMensalidade } }
    end

    assert_redirected_to rfinanceiro_url(Rfinanceiro.last)
  end

  test "should show rfinanceiro" do
    get rfinanceiro_url(@rfinanceiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_rfinanceiro_url(@rfinanceiro)
    assert_response :success
  end

  test "should update rfinanceiro" do
    patch rfinanceiro_url(@rfinanceiro), params: { rfinanceiro: { debitoTotal: @rfinanceiro.debitoTotal, id_rf: @rfinanceiro.id_rf, nome: @rfinanceiro.nome, telefone: @rfinanceiro.telefone, valorMensalidade: @rfinanceiro.valorMensalidade } }
    assert_redirected_to rfinanceiro_url(@rfinanceiro)
  end

  test "should destroy rfinanceiro" do
    assert_difference('Rfinanceiro.count', -1) do
      delete rfinanceiro_url(@rfinanceiro)
    end

    assert_redirected_to rfinanceiros_url
  end
end
