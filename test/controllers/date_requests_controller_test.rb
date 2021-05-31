require "test_helper"

class DateRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_request = date_requests(:one)
  end

  test "should get index" do
    get date_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_date_request_url
    assert_response :success
  end

  test "should create date_request" do
    assert_difference('DateRequest.count') do
      post date_requests_url, params: { date_request: { acceptance: @date_request.acceptance, recipient_id: @date_request.recipient_id, sender_id: @date_request.sender_id, weekly_rose: @date_request.weekly_rose } }
    end

    assert_redirected_to date_request_url(DateRequest.last)
  end

  test "should show date_request" do
    get date_request_url(@date_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_request_url(@date_request)
    assert_response :success
  end

  test "should update date_request" do
    patch date_request_url(@date_request), params: { date_request: { acceptance: @date_request.acceptance, recipient_id: @date_request.recipient_id, sender_id: @date_request.sender_id, weekly_rose: @date_request.weekly_rose } }
    assert_redirected_to date_request_url(@date_request)
  end

  test "should destroy date_request" do
    assert_difference('DateRequest.count', -1) do
      delete date_request_url(@date_request)
    end

    assert_redirected_to date_requests_url
  end
end
