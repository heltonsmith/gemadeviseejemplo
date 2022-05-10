require "application_system_test_case"

class FonosTest < ApplicationSystemTestCase
  setup do
    @fono = fonos(:one)
  end

  test "visiting the index" do
    visit fonos_url
    assert_selector "h1", text: "Fonos"
  end

  test "should create fono" do
    visit fonos_url
    click_on "New fono"

    fill_in "Numero", with: @fono.numero
    fill_in "User", with: @fono.user_id
    click_on "Create Fono"

    assert_text "Fono was successfully created"
    click_on "Back"
  end

  test "should update Fono" do
    visit fono_url(@fono)
    click_on "Edit this fono", match: :first

    fill_in "Numero", with: @fono.numero
    fill_in "User", with: @fono.user_id
    click_on "Update Fono"

    assert_text "Fono was successfully updated"
    click_on "Back"
  end

  test "should destroy Fono" do
    visit fono_url(@fono)
    click_on "Destroy this fono", match: :first

    assert_text "Fono was successfully destroyed"
  end
end
