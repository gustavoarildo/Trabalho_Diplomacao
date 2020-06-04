require "application_system_test_case"

class DemonstrativosTest < ApplicationSystemTestCase
  setup do
    @demonstrativo = demonstrativos(:one)
  end

  test "visiting the index" do
    visit demonstrativos_url
    assert_selector "h1", text: "Demonstrativos"
  end

  test "creating a Demonstrativo" do
    visit demonstrativos_url
    click_on "New Demonstrativo"

    fill_in "Id mesano", with: @demonstrativo.id_mesano
    fill_in "Inadimplencia", with: @demonstrativo.inadimplencia
    fill_in "Receitaestimada", with: @demonstrativo.receitaestimada
    fill_in "Receitamenosinadimplencia", with: @demonstrativo.receitamenosinadimplencia
    fill_in "Valordespesatotal", with: @demonstrativo.valordespesatotal
    click_on "Create Demonstrativo"

    assert_text "Demonstrativo was successfully created"
    click_on "Back"
  end

  test "updating a Demonstrativo" do
    visit demonstrativos_url
    click_on "Edit", match: :first

    fill_in "Id mesano", with: @demonstrativo.id_mesano
    fill_in "Inadimplencia", with: @demonstrativo.inadimplencia
    fill_in "Receitaestimada", with: @demonstrativo.receitaestimada
    fill_in "Receitamenosinadimplencia", with: @demonstrativo.receitamenosinadimplencia
    fill_in "Valordespesatotal", with: @demonstrativo.valordespesatotal
    click_on "Update Demonstrativo"

    assert_text "Demonstrativo was successfully updated"
    click_on "Back"
  end

  test "destroying a Demonstrativo" do
    visit demonstrativos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Demonstrativo was successfully destroyed"
  end
end
