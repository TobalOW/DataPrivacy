require "application_system_test_case"

class OutputsTest < ApplicationSystemTestCase
  setup do
    @output = outputs(:one)
  end

  test "visiting the index" do
    visit outputs_url
    assert_selector "h1", text: "Outputs"
  end

  test "creating a Output" do
    visit outputs_url
    click_on "New Output"

    fill_in "Additional data", with: @output.additional_data
    click_on "Create Output"

    assert_text "Output was successfully created"
    click_on "Back"
  end

  test "updating a Output" do
    visit outputs_url
    click_on "Edit", match: :first

    fill_in "Additional data", with: @output.additional_data
    click_on "Update Output"

    assert_text "Output was successfully updated"
    click_on "Back"
  end

  test "destroying a Output" do
    visit outputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Output was successfully destroyed"
  end
end
