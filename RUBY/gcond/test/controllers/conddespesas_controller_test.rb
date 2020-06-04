require 'test_helper'

class ConddespesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conddespesa = conddespesas(:one)
  end

  test "should get index" do
    get conddespesas_url
    assert_response :success
  end

  test "should get new" do
    get new_conddespesa_url
    assert_response :success
  end

  test "should create conddespesa" do
    assert_difference('Conddespesa.count') do
      post conddespesas_url, params: { conddespesa: { id_cd: @conddespesa.id_cd, nomedespesa: @conddespesa.nomedespesa, valordespesa: @conddespesa.valordespesa } }
    end

    assert_redirected_to conddespesa_url(Conddespesa.last)
  end

  test "should show conddespesa" do
    get conddespesa_url(@conddespesa)
    assert_response :success
  end

  test "should get edit" do
    get edit_conddespesa_url(@conddespesa)
    assert_response :success
  end

  test "should update conddespesa" do
    patch conddespesa_url(@conddespesa), params: { conddespesa: { id_cd: @conddespesa.id_cd, nomedespesa: @conddespesa.nomedespesa, valordespesa: @conddespesa.valordespesa } }
    assert_redirected_to conddespesa_url(@conddespesa)
  end

  test "should destroy conddespesa" do
    assert_difference('Conddespesa.count', -1) do
      delete conddespesa_url(@conddespesa)
    end

    assert_redirected_to conddespesas_url
  end
end
