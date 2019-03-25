require "application_system_test_case"

class InputsTest < ApplicationSystemTestCase
  setup do
    @input = inputs(:one)
  end

  test "visiting the index" do
    visit inputs_url
    assert_selector "h1", text: "Inputs"
  end

  test "creating a Input" do
    visit inputs_url
    click_on "New Input"

    fill_in "Additional data", with: @input.additional_data
    click_on "Create Input"

    assert_text "Input was successfully created"
    click_on "Back"
  end

  test "updating a Input" do
    visit inputs_url
    click_on "Edit", match: :first

    fill_in "Additional data", with: @input.additional_data
    click_on "Update Input"

    assert_text "Input was successfully updated"
    click_on "Back"
  end

  test "destroying a Input" do
    visit inputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Input was successfully destroyed"
  end
end
