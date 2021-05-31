require "test_helper"

class UserDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_datum = user_data(:one)
  end

  test "should get index" do
    get user_data_url
    assert_response :success
  end

  test "should get new" do
    get new_user_datum_url
    assert_response :success
  end

  test "should create user_datum" do
    assert_difference('UserDatum.count') do
      post user_data_url, params: { user_datum: { age: @user_datum.age, daily_photo_reveals: @user_datum.daily_photo_reveals, drinking: @user_datum.drinking, full_name: @user_datum.full_name, gender: @user_datum.gender, height: @user_datum.height, hometown: @user_datum.hometown, interested_in_men: @user_datum.interested_in_men, interested_in_men_and_women: @user_datum.interested_in_men_and_women, interested_in_women: @user_datum.interested_in_women, job_title: @user_datum.job_title, owner_id: @user_datum.owner_id, political_affiliation: @user_datum.political_affiliation, religion: @user_datum.religion, school: @user_datum.school, smoking: @user_datum.smoking, undergrad_school: @user_datum.undergrad_school } }
    end

    assert_redirected_to user_datum_url(UserDatum.last)
  end

  test "should show user_datum" do
    get user_datum_url(@user_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_datum_url(@user_datum)
    assert_response :success
  end

  test "should update user_datum" do
    patch user_datum_url(@user_datum), params: { user_datum: { age: @user_datum.age, daily_photo_reveals: @user_datum.daily_photo_reveals, drinking: @user_datum.drinking, full_name: @user_datum.full_name, gender: @user_datum.gender, height: @user_datum.height, hometown: @user_datum.hometown, interested_in_men: @user_datum.interested_in_men, interested_in_men_and_women: @user_datum.interested_in_men_and_women, interested_in_women: @user_datum.interested_in_women, job_title: @user_datum.job_title, owner_id: @user_datum.owner_id, political_affiliation: @user_datum.political_affiliation, religion: @user_datum.religion, school: @user_datum.school, smoking: @user_datum.smoking, undergrad_school: @user_datum.undergrad_school } }
    assert_redirected_to user_datum_url(@user_datum)
  end

  test "should destroy user_datum" do
    assert_difference('UserDatum.count', -1) do
      delete user_datum_url(@user_datum)
    end

    assert_redirected_to user_data_url
  end
end
