require "application_system_test_case"

class ConddespesasTest < ApplicationSystemTestCase
  setup do
    @conddespesa = conddespesas(:one)
  end

  test "visiting the index" do
    visit conddespesas_url
    assert_selector "h1", text: "Conddespesas"
  end

  test "creating a Conddespesa" do
    visit conddespesas_url
    click_on "New Conddespesa"

    fill_in "Id cd", with: @conddespesa.id_cd
    fill_in "Nomedespesa", with: @conddespesa.nomedespesa
    fill_in "Valordespesa", with: @conddespesa.valordespesa
    click_on "Create Conddespesa"

    assert_text "Conddespesa was successfully created"
    click_on "Back"
  end

  test "updating a Conddespesa" do
    visit conddespesas_url
    click_on "Edit", match: :first

    fill_in "Id cd", with: @conddespesa.id_cd
    fill_in "Nomedespesa", with: @conddespesa.nomedespesa
    fill_in "Valordespesa", with: @conddespesa.valordespesa
    click_on "Update Conddespesa"

    assert_text "Conddespesa was successfully updated"
    click_on "Back"
  end

  test "destroying a Conddespesa" do
    visit conddespesas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conddespesa was successfully destroyed"
  end
end
