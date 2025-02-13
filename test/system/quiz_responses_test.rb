require "application_system_test_case"

class QuizResponsesTest < ApplicationSystemTestCase
  setup do
    @quiz_response = quiz_responses(:one)
  end

  test "visiting the index" do
    visit quiz_responses_url
    assert_selector "h1", text: "Quiz responses"
  end

  test "should create quiz response" do
    visit quiz_responses_url
    click_on "New quiz response"

    fill_in "Quiz", with: @quiz_response.quiz_id
    fill_in "Selected option", with: @quiz_response.selected_option_id
    fill_in "User", with: @quiz_response.user_id
    click_on "Create Quiz response"

    assert_text "Quiz response was successfully created"
    click_on "Back"
  end

  test "should update Quiz response" do
    visit quiz_response_url(@quiz_response)
    click_on "Edit this quiz response", match: :first

    fill_in "Quiz", with: @quiz_response.quiz_id
    fill_in "Selected option", with: @quiz_response.selected_option_id
    fill_in "User", with: @quiz_response.user_id
    click_on "Update Quiz response"

    assert_text "Quiz response was successfully updated"
    click_on "Back"
  end

  test "should destroy Quiz response" do
    visit quiz_response_url(@quiz_response)
    click_on "Destroy this quiz response", match: :first

    assert_text "Quiz response was successfully destroyed"
  end
end
