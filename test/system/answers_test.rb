require "application_system_test_case"

class AnswersTest < ApplicationSystemTestCase
  setup do
    @answer = answers(:one)
  end

  test "visiting the index" do
    visit answers_url
    assert_selector "h1", text: "Answers"
  end

  test "creating a Answer" do
    visit answers_url
    click_on "New Answer"

    fill_in "Ans code", with: @answer.ans_code
    fill_in "Language", with: @answer.language
    fill_in "Remark", with: @answer.remark
    fill_in "Time taken", with: @answer.time_taken
    click_on "Create Answer"

    assert_text "Answer was successfully created"
    click_on "Back"
  end

  test "updating a Answer" do
    visit answers_url
    click_on "Edit", match: :first

    fill_in "Ans code", with: @answer.ans_code
    fill_in "Language", with: @answer.language
    fill_in "Remark", with: @answer.remark
    fill_in "Time taken", with: @answer.time_taken
    click_on "Update Answer"

    assert_text "Answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Answer" do
    visit answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answer was successfully destroyed"
  end
end
