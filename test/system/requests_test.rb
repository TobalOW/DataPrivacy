require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Headers", with: @request.headers
    fill_in "Host", with: @request.host
    fill_in "Response body", with: @request.response_body
    fill_in "Response headers", with: @request.response_headers
    fill_in "Uri", with: @request.uri
    fill_in "Url", with: @request.url
    fill_in "Verb http", with: @request.verb_http
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Headers", with: @request.headers
    fill_in "Host", with: @request.host
    fill_in "Response body", with: @request.response_body
    fill_in "Response headers", with: @request.response_headers
    fill_in "Uri", with: @request.uri
    fill_in "Url", with: @request.url
    fill_in "Verb http", with: @request.verb_http
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
