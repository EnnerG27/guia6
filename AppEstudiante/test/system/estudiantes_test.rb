require "application_system_test_case"

class EstudiantesTest < ApplicationSystemTestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "visiting the index" do
    visit estudiantes_url
    assert_selector "h1", text: "Estudiantes"
  end

  test "creating a Estudiante" do
    visit estudiantes_url
    click_on "New Estudiante"

    fill_in "Apellido", with: @estudiante.apellido
    fill_in "Carnet", with: @estudiante.carnet
    fill_in "Carrera", with: @estudiante.carrera
    fill_in "Celular", with: @estudiante.celular
    fill_in "Nacimiento", with: @estudiante.nacimiento
    fill_in "Nombre", with: @estudiante.nombre
    click_on "Create Estudiante"

    assert_text "Estudiante was successfully created"
    click_on "Back"
  end

  test "updating a Estudiante" do
    visit estudiantes_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @estudiante.apellido
    fill_in "Carnet", with: @estudiante.carnet
    fill_in "Carrera", with: @estudiante.carrera
    fill_in "Celular", with: @estudiante.celular
    fill_in "Nacimiento", with: @estudiante.nacimiento
    fill_in "Nombre", with: @estudiante.nombre
    click_on "Update Estudiante"

    assert_text "Estudiante was successfully updated"
    click_on "Back"
  end

  test "destroying a Estudiante" do
    visit estudiantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estudiante was successfully destroyed"
  end
end
