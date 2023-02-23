require "test_helper"

class RepeatedTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repeated_task = repeated_tasks(:one)
  end

  test "should get index" do
    get repeated_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_repeated_task_url
    assert_response :success
  end

  test "should create repeated_task" do
    assert_difference("RepeatedTask.count") do
      post repeated_tasks_url, params: { repeated_task: { completed: @repeated_task.completed, title: @repeated_task.title } }
    end

    assert_redirected_to repeated_task_url(RepeatedTask.last)
  end

  test "should show repeated_task" do
    get repeated_task_url(@repeated_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_repeated_task_url(@repeated_task)
    assert_response :success
  end

  test "should update repeated_task" do
    patch repeated_task_url(@repeated_task), params: { repeated_task: { completed: @repeated_task.completed, title: @repeated_task.title } }
    assert_redirected_to repeated_task_url(@repeated_task)
  end

  test "should destroy repeated_task" do
    assert_difference("RepeatedTask.count", -1) do
      delete repeated_task_url(@repeated_task)
    end

    assert_redirected_to repeated_tasks_url
  end
end
