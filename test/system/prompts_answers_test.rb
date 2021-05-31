require "application_system_test_case"

class PromptsAnswersTest < ApplicationSystemTestCase
  setup do
    @prompts_answer = prompts_answers(:one)
  end

  test "visiting the index" do
    visit prompts_answers_url
    assert_selector "h1", text: "Prompts Answers"
  end

  test "creating a Prompts answer" do
    visit prompts_answers_url
    click_on "New Prompts Answer"

    fill_in "Owner", with: @prompts_answer.owner_id
    fill_in "Prompt", with: @prompts_answer.prompt_id
    fill_in "Prompt one", with: @prompts_answer.prompt_one
    fill_in "Prompt three", with: @prompts_answer.prompt_three
    fill_in "Prompt two", with: @prompts_answer.prompt_two
    click_on "Create Prompts answer"

    assert_text "Prompts answer was successfully created"
    click_on "Back"
  end

  test "updating a Prompts answer" do
    visit prompts_answers_url
    click_on "Edit", match: :first

    fill_in "Owner", with: @prompts_answer.owner_id
    fill_in "Prompt", with: @prompts_answer.prompt_id
    fill_in "Prompt one", with: @prompts_answer.prompt_one
    fill_in "Prompt three", with: @prompts_answer.prompt_three
    fill_in "Prompt two", with: @prompts_answer.prompt_two
    click_on "Update Prompts answer"

    assert_text "Prompts answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Prompts answer" do
    visit prompts_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prompts answer was successfully destroyed"
  end
end
