require 'test_helper'

class DemonstrativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demonstrativo = demonstrativos(:one)
  end

  test "should get index" do
    get demonstrativos_url
    assert_response :success
  end

  test "should get new" do
    get new_demonstrativo_url
    assert_response :success
  end

  test "should create demonstrativo" do
    assert_difference('Demonstrativo.count') do
      post demonstrativos_url, params: { demonstrativo: { id_mesano: @demonstrativo.id_mesano, inadimplencia: @demonstrativo.inadimplencia, receitaestimada: @demonstrativo.receitaestimada, receitamenosinadimplencia: @demonstrativo.receitamenosinadimplencia, valordespesatotal: @demonstrativo.valordespesatotal } }
    end

    assert_redirected_to demonstrativo_url(Demonstrativo.last)
  end

  test "should show demonstrativo" do
    get demonstrativo_url(@demonstrativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_demonstrativo_url(@demonstrativo)
    assert_response :success
  end

  test "should update demonstrativo" do
    patch demonstrativo_url(@demonstrativo), params: { demonstrativo: { id_mesano: @demonstrativo.id_mesano, inadimplencia: @demonstrativo.inadimplencia, receitaestimada: @demonstrativo.receitaestimada, receitamenosinadimplencia: @demonstrativo.receitamenosinadimplencia, valordespesatotal: @demonstrativo.valordespesatotal } }
    assert_redirected_to demonstrativo_url(@demonstrativo)
  end

  test "should destroy demonstrativo" do
    assert_difference('Demonstrativo.count', -1) do
      delete demonstrativo_url(@demonstrativo)
    end

    assert_redirected_to demonstrativos_url
  end
end
