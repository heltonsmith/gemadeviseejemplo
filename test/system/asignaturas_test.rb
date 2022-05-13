require "application_system_test_case"

class AsignaturasTest < ApplicationSystemTestCase
  setup do
    @asignatura = asignaturas(:one)
  end

  test "visiting the index" do
    visit asignaturas_url
    assert_selector "h1", text: "Asignaturas"
  end

  test "should create asignatura" do
    visit asignaturas_url
    click_on "New asignatura"

    fill_in "Nombre", with: @asignatura.nombre
    click_on "Create Asignatura"

    assert_text "Asignatura was successfully created"
    click_on "Back"
  end

  test "should update Asignatura" do
    visit asignatura_url(@asignatura)
    click_on "Edit this asignatura", match: :first

    fill_in "Nombre", with: @asignatura.nombre
    click_on "Update Asignatura"

    assert_text "Asignatura was successfully updated"
    click_on "Back"
  end

  test "should destroy Asignatura" do
    visit asignatura_url(@asignatura)
    click_on "Destroy this asignatura", match: :first

    assert_text "Asignatura was successfully destroyed"
  end
end
