require "application_system_test_case"

class RepeatedTasksTest < ApplicationSystemTestCase
  setup do
    @repeated_task = repeated_tasks(:one)
  end

  test "visiting the index" do
    visit repeated_tasks_url
    assert_selector "h1", text: "Repeated tasks"
  end

  test "should create repeated task" do
    visit repeated_tasks_url
    click_on "New repeated task"

    check "Completed" if @repeated_task.completed
    fill_in "Title", with: @repeated_task.title
    click_on "Create Repeated task"

    assert_text "Repeated task was successfully created"
    click_on "Back"
  end

  test "should update Repeated task" do
    visit repeated_task_url(@repeated_task)
    click_on "Edit this repeated task", match: :first

    check "Completed" if @repeated_task.completed
    fill_in "Title", with: @repeated_task.title
    click_on "Update Repeated task"

    assert_text "Repeated task was successfully updated"
    click_on "Back"
  end

  test "should destroy Repeated task" do
    visit repeated_task_url(@repeated_task)
    click_on "Destroy this repeated task", match: :first

    assert_text "Repeated task was successfully destroyed"
  end
end
