class HomeController < ApplicationController
  def dashboard
    @task = Task.new
    @uncompleted_tasks = Task.where(completed: false)
    @completed_tasks = Task.where(completed: true)
  end
end
