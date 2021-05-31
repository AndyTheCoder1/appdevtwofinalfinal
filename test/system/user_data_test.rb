require "application_system_test_case"

class UserDataTest < ApplicationSystemTestCase
  setup do
    @user_datum = user_data(:one)
  end

  test "visiting the index" do
    visit user_data_url
    assert_selector "h1", text: "User Data"
  end

  test "creating a User datum" do
    visit user_data_url
    click_on "New User Datum"

    fill_in "Age", with: @user_datum.age
    fill_in "Daily photo reveals", with: @user_datum.daily_photo_reveals
    fill_in "Drinking", with: @user_datum.drinking
    fill_in "Full name", with: @user_datum.full_name
    fill_in "Gender", with: @user_datum.gender
    fill_in "Height", with: @user_datum.height
    fill_in "Hometown", with: @user_datum.hometown
    check "Interested in men" if @user_datum.interested_in_men
    check "Interested in men and women" if @user_datum.interested_in_men_and_women
    check "Interested in women" if @user_datum.interested_in_women
    fill_in "Job title", with: @user_datum.job_title
    fill_in "Owner", with: @user_datum.owner_id
    fill_in "Political affiliation", with: @user_datum.political_affiliation
    fill_in "Religion", with: @user_datum.religion
    fill_in "School", with: @user_datum.school
    fill_in "Smoking", with: @user_datum.smoking
    fill_in "Undergrad school", with: @user_datum.undergrad_school
    click_on "Create User datum"

    assert_text "User datum was successfully created"
    click_on "Back"
  end

  test "updating a User datum" do
    visit user_data_url
    click_on "Edit", match: :first

    fill_in "Age", with: @user_datum.age
    fill_in "Daily photo reveals", with: @user_datum.daily_photo_reveals
    fill_in "Drinking", with: @user_datum.drinking
    fill_in "Full name", with: @user_datum.full_name
    fill_in "Gender", with: @user_datum.gender
    fill_in "Height", with: @user_datum.height
    fill_in "Hometown", with: @user_datum.hometown
    check "Interested in men" if @user_datum.interested_in_men
    check "Interested in men and women" if @user_datum.interested_in_men_and_women
    check "Interested in women" if @user_datum.interested_in_women
    fill_in "Job title", with: @user_datum.job_title
    fill_in "Owner", with: @user_datum.owner_id
    fill_in "Political affiliation", with: @user_datum.political_affiliation
    fill_in "Religion", with: @user_datum.religion
    fill_in "School", with: @user_datum.school
    fill_in "Smoking", with: @user_datum.smoking
    fill_in "Undergrad school", with: @user_datum.undergrad_school
    click_on "Update User datum"

    assert_text "User datum was successfully updated"
    click_on "Back"
  end

  test "destroying a User datum" do
    visit user_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User datum was successfully destroyed"
  end
end
