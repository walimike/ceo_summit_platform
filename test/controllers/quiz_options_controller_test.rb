require "test_helper"

class QuizOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_option = quiz_options(:one)
  end

  test "should get index" do
    get quiz_options_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_option_url
    assert_response :success
  end

  test "should create quiz_option" do
    assert_difference("QuizOption.count") do
      post quiz_options_url, params: { quiz_option: { content: @quiz_option.content, correct: @quiz_option.correct, quiz_id: @quiz_option.quiz_id } }
    end

    assert_redirected_to quiz_option_url(QuizOption.last)
  end

  test "should show quiz_option" do
    get quiz_option_url(@quiz_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_option_url(@quiz_option)
    assert_response :success
  end

  test "should update quiz_option" do
    patch quiz_option_url(@quiz_option), params: { quiz_option: { content: @quiz_option.content, correct: @quiz_option.correct, quiz_id: @quiz_option.quiz_id } }
    assert_redirected_to quiz_option_url(@quiz_option)
  end

  test "should destroy quiz_option" do
    assert_difference("QuizOption.count", -1) do
      delete quiz_option_url(@quiz_option)
    end

    assert_redirected_to quiz_options_url
  end
end
