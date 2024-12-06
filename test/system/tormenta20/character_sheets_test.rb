require "application_system_test_case"

class Tormenta20::CharacterSheetsTest < ApplicationSystemTestCase
  setup do
    @tormenta20_character_sheet = tormenta20_character_sheets(:one)
  end

  test "visiting the index" do
    visit tormenta20_character_sheets_url
    assert_selector "h1", text: "Character sheets"
  end

  test "should create character sheet" do
    visit tormenta20_character_sheets_url
    click_on "New character sheet"

    fill_in "Creation step", with: @tormenta20_character_sheet.creation_step
    fill_in "Data", with: @tormenta20_character_sheet.data
    fill_in "Description", with: @tormenta20_character_sheet.description
    check "Levelling up" if @tormenta20_character_sheet.levelling_up
    fill_in "Name", with: @tormenta20_character_sheet.name
    fill_in "Temp", with: @tormenta20_character_sheet.temp
    click_on "Create Character sheet"

    assert_text "Character sheet was successfully created"
    click_on "Back"
  end

  test "should update Character sheet" do
    visit tormenta20_character_sheet_url(@tormenta20_character_sheet)
    click_on "Edit this character sheet", match: :first

    fill_in "Creation step", with: @tormenta20_character_sheet.creation_step
    fill_in "Data", with: @tormenta20_character_sheet.data
    fill_in "Description", with: @tormenta20_character_sheet.description
    check "Levelling up" if @tormenta20_character_sheet.levelling_up
    fill_in "Name", with: @tormenta20_character_sheet.name
    fill_in "Temp", with: @tormenta20_character_sheet.temp
    click_on "Update Character sheet"

    assert_text "Character sheet was successfully updated"
    click_on "Back"
  end

  test "should destroy Character sheet" do
    visit tormenta20_character_sheet_url(@tormenta20_character_sheet)
    click_on "Destroy this character sheet", match: :first

    assert_text "Character sheet was successfully destroyed"
  end
end
