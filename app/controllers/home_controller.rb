class HomeController < ApplicationController
  def dashboard
    @task = Task.new
    @repeated_tasks = RepeatedTask.all
    @uncompleted_tasks = Task.where(completed: false)
    @completed_tasks = Task.where(completed: true)
  end
end
