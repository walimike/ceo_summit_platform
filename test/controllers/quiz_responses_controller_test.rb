require "test_helper"

class QuizResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_response = quiz_responses(:one)
  end

  test "should get index" do
    get quiz_responses_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_response_url
    assert_response :success
  end

  test "should create quiz_response" do
    assert_difference("QuizResponse.count") do
      post quiz_responses_url, params: { quiz_response: { quiz_id: @quiz_response.quiz_id, selected_option_id: @quiz_response.selected_option_id, user_id: @quiz_response.user_id } }
    end

    assert_redirected_to quiz_response_url(QuizResponse.last)
  end

  test "should show quiz_response" do
    get quiz_response_url(@quiz_response)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_response_url(@quiz_response)
    assert_response :success
  end

  test "should update quiz_response" do
    patch quiz_response_url(@quiz_response), params: { quiz_response: { quiz_id: @quiz_response.quiz_id, selected_option_id: @quiz_response.selected_option_id, user_id: @quiz_response.user_id } }
    assert_redirected_to quiz_response_url(@quiz_response)
  end

  test "should destroy quiz_response" do
    assert_difference("QuizResponse.count", -1) do
      delete quiz_response_url(@quiz_response)
    end

    assert_redirected_to quiz_responses_url
  end
end
