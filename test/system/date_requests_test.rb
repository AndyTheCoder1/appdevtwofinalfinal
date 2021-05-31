require "application_system_test_case"

class DateRequestsTest < ApplicationSystemTestCase
  setup do
    @date_request = date_requests(:one)
  end

  test "visiting the index" do
    visit date_requests_url
    assert_selector "h1", text: "Date Requests"
  end

  test "creating a Date request" do
    visit date_requests_url
    click_on "New Date Request"

    check "Acceptance" if @date_request.acceptance
    fill_in "Recipient", with: @date_request.recipient_id
    fill_in "Sender", with: @date_request.sender_id
    check "Weekly rose" if @date_request.weekly_rose
    click_on "Create Date request"

    assert_text "Date request was successfully created"
    click_on "Back"
  end

  test "updating a Date request" do
    visit date_requests_url
    click_on "Edit", match: :first

    check "Acceptance" if @date_request.acceptance
    fill_in "Recipient", with: @date_request.recipient_id
    fill_in "Sender", with: @date_request.sender_id
    check "Weekly rose" if @date_request.weekly_rose
    click_on "Update Date request"

    assert_text "Date request was successfully updated"
    click_on "Back"
  end

  test "destroying a Date request" do
    visit date_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date request was successfully destroyed"
  end
end
