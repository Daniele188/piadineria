require "application_system_test_case"

class PiadinesTest < ApplicationSystemTestCase
  setup do
    @piadine = piadines(:one)
  end

  test "visiting the index" do
    visit piadines_url
    assert_selector "h1", text: "Piadines"
  end

  test "creating a Piadine" do
    visit piadines_url
    click_on "New Piadine"

    fill_in "Nome", with: @piadine.Nome
    fill_in "Farcitura", with: @piadine.farcitura
    fill_in "Impasto", with: @piadine.impasto
    fill_in "Indirizzo", with: @piadine.indirizzo
    fill_in "Quantità", with: @piadine.quantità
    click_on "Create Piadine"

    assert_text "Piadine was successfully created"
    click_on "Back"
  end

  test "updating a Piadine" do
    visit piadines_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @piadine.Nome
    fill_in "Farcitura", with: @piadine.farcitura
    fill_in "Impasto", with: @piadine.impasto
    fill_in "Indirizzo", with: @piadine.indirizzo
    fill_in "Quantità", with: @piadine.quantità
    click_on "Update Piadine"

    assert_text "Piadine was successfully updated"
    click_on "Back"
  end

  test "destroying a Piadine" do
    visit piadines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Piadine was successfully destroyed"
  end
end
