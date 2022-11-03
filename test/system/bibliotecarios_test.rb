require "application_system_test_case"

class BibliotecariosTest < ApplicationSystemTestCase
  setup do
    @bibliotecario = bibliotecarios(:one)
  end

  test "visiting the index" do
    visit bibliotecarios_url
    assert_selector "h1", text: "Bibliotecarios"
  end

  test "should create bibliotecario" do
    visit bibliotecarios_url
    click_on "New bibliotecario"

    fill_in "Nome", with: @bibliotecario.nome
    click_on "Create Bibliotecario"

    assert_text "Bibliotecario was successfully created"
    click_on "Back"
  end

  test "should update Bibliotecario" do
    visit bibliotecario_url(@bibliotecario)
    click_on "Edit this bibliotecario", match: :first

    fill_in "Nome", with: @bibliotecario.nome
    click_on "Update Bibliotecario"

    assert_text "Bibliotecario was successfully updated"
    click_on "Back"
  end

  test "should destroy Bibliotecario" do
    visit bibliotecario_url(@bibliotecario)
    click_on "Destroy this bibliotecario", match: :first

    assert_text "Bibliotecario was successfully destroyed"
  end
end
