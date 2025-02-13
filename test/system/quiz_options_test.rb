require "application_system_test_case"

class QuizOptionsTest < ApplicationSystemTestCase
  setup do
    @quiz_option = quiz_options(:one)
  end

  test "visiting the index" do
    visit quiz_options_url
    assert_selector "h1", text: "Quiz options"
  end

  test "should create quiz option" do
    visit quiz_options_url
    click_on "New quiz option"

    fill_in "Content", with: @quiz_option.content
    check "Correct" if @quiz_option.correct
    fill_in "Quiz", with: @quiz_option.quiz_id
    click_on "Create Quiz option"

    assert_text "Quiz option was successfully created"
    click_on "Back"
  end

  test "should update Quiz option" do
    visit quiz_option_url(@quiz_option)
    click_on "Edit this quiz option", match: :first

    fill_in "Content", with: @quiz_option.content
    check "Correct" if @quiz_option.correct
    fill_in "Quiz", with: @quiz_option.quiz_id
    click_on "Update Quiz option"

    assert_text "Quiz option was successfully updated"
    click_on "Back"
  end

  test "should destroy Quiz option" do
    visit quiz_option_url(@quiz_option)
    click_on "Destroy this quiz option", match: :first

    assert_text "Quiz option was successfully destroyed"
  end
end
