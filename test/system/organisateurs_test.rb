require "application_system_test_case"

class OrganisateursTest < ApplicationSystemTestCase
  setup do
    @organisateur = organisateurs(:one)
  end

  test "visiting the index" do
    visit organisateurs_url
    assert_selector "h1", text: "Organisateurs"
  end

  test "creating a Organisateur" do
    visit organisateurs_url
    click_on "New Organisateur"

    fill_in "About", with: @organisateur.about
    fill_in "Kind", with: @organisateur.kind
    fill_in "Name", with: @organisateur.name
    click_on "Create Organisateur"

    assert_text "Organisateur was successfully created"
    click_on "Back"
  end

  test "updating a Organisateur" do
    visit organisateurs_url
    click_on "Edit", match: :first

    fill_in "About", with: @organisateur.about
    fill_in "Kind", with: @organisateur.kind
    fill_in "Name", with: @organisateur.name
    click_on "Update Organisateur"

    assert_text "Organisateur was successfully updated"
    click_on "Back"
  end

  test "destroying a Organisateur" do
    visit organisateurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organisateur was successfully destroyed"
  end
end
