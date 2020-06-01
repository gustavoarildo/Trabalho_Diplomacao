require "application_system_test_case"

class RfinanceirosTest < ApplicationSystemTestCase
  setup do
    @rfinanceiro = rfinanceiros(:one)
  end

  test "visiting the index" do
    visit rfinanceiros_url
    assert_selector "h1", text: "Rfinanceiros"
  end

  test "creating a Rfinanceiro" do
    visit rfinanceiros_url
    click_on "New Rfinanceiro"

    fill_in "Debitototal", with: @rfinanceiro.debitoTotal
    fill_in "Id rf", with: @rfinanceiro.id_rf
    fill_in "Nome", with: @rfinanceiro.nome
    fill_in "Telefone", with: @rfinanceiro.telefone
    fill_in "Valormensalidade", with: @rfinanceiro.valorMensalidade
    click_on "Create Rfinanceiro"

    assert_text "Rfinanceiro was successfully created"
    click_on "Back"
  end

  test "updating a Rfinanceiro" do
    visit rfinanceiros_url
    click_on "Edit", match: :first

    fill_in "Debitototal", with: @rfinanceiro.debitoTotal
    fill_in "Id rf", with: @rfinanceiro.id_rf
    fill_in "Nome", with: @rfinanceiro.nome
    fill_in "Telefone", with: @rfinanceiro.telefone
    fill_in "Valormensalidade", with: @rfinanceiro.valorMensalidade
    click_on "Update Rfinanceiro"

    assert_text "Rfinanceiro was successfully updated"
    click_on "Back"
  end

  test "destroying a Rfinanceiro" do
    visit rfinanceiros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rfinanceiro was successfully destroyed"
  end
end
