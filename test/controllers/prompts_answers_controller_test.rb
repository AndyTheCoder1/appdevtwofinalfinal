require "test_helper"

class PromptsAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prompts_answer = prompts_answers(:one)
  end

  test "should get index" do
    get prompts_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_prompts_answer_url
    assert_response :success
  end

  test "should create prompts_answer" do
    assert_difference('PromptsAnswer.count') do
      post prompts_answers_url, params: { prompts_answer: { owner_id: @prompts_answer.owner_id, prompt_id: @prompts_answer.prompt_id, prompt_one: @prompts_answer.prompt_one, prompt_three: @prompts_answer.prompt_three, prompt_two: @prompts_answer.prompt_two } }
    end

    assert_redirected_to prompts_answer_url(PromptsAnswer.last)
  end

  test "should show prompts_answer" do
    get prompts_answer_url(@prompts_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_prompts_answer_url(@prompts_answer)
    assert_response :success
  end

  test "should update prompts_answer" do
    patch prompts_answer_url(@prompts_answer), params: { prompts_answer: { owner_id: @prompts_answer.owner_id, prompt_id: @prompts_answer.prompt_id, prompt_one: @prompts_answer.prompt_one, prompt_three: @prompts_answer.prompt_three, prompt_two: @prompts_answer.prompt_two } }
    assert_redirected_to prompts_answer_url(@prompts_answer)
  end

  test "should destroy prompts_answer" do
    assert_difference('PromptsAnswer.count', -1) do
      delete prompts_answer_url(@prompts_answer)
    end

    assert_redirected_to prompts_answers_url
  end
end
