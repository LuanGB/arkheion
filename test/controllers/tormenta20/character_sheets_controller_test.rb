require "test_helper"

class Tormenta20::CharacterSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tormenta20_character_sheet = tormenta20_character_sheets(:one)
  end

  test "should get index" do
    get tormenta20_character_sheets_url
    assert_response :success
  end

  test "should get new" do
    get new_tormenta20_character_sheet_url
    assert_response :success
  end

  test "should create tormenta20_character_sheet" do
    assert_difference("Tormenta20::CharacterSheet.count") do
      post tormenta20_character_sheets_url, params: { tormenta20_character_sheet: { creation_step: @tormenta20_character_sheet.creation_step, data: @tormenta20_character_sheet.data, description: @tormenta20_character_sheet.description, levelling_up: @tormenta20_character_sheet.levelling_up, name: @tormenta20_character_sheet.name, temp: @tormenta20_character_sheet.temp } }
    end

    assert_redirected_to tormenta20_character_sheet_url(Tormenta20::CharacterSheet.last)
  end

  test "should show tormenta20_character_sheet" do
    get tormenta20_character_sheet_url(@tormenta20_character_sheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tormenta20_character_sheet_url(@tormenta20_character_sheet)
    assert_response :success
  end

  test "should update tormenta20_character_sheet" do
    patch tormenta20_character_sheet_url(@tormenta20_character_sheet), params: { tormenta20_character_sheet: { creation_step: @tormenta20_character_sheet.creation_step, data: @tormenta20_character_sheet.data, description: @tormenta20_character_sheet.description, levelling_up: @tormenta20_character_sheet.levelling_up, name: @tormenta20_character_sheet.name, temp: @tormenta20_character_sheet.temp } }
    assert_redirected_to tormenta20_character_sheet_url(@tormenta20_character_sheet)
  end

  test "should destroy tormenta20_character_sheet" do
    assert_difference("Tormenta20::CharacterSheet.count", -1) do
      delete tormenta20_character_sheet_url(@tormenta20_character_sheet)
    end

    assert_redirected_to tormenta20_character_sheets_url
  end
end
