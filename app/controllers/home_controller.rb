class HomeController < ApplicationController
  def dashboard
    @task = Task.new
    @repeated_tasks = RepeatedTask.all
    @uncompleted_tasks = Task.where(completed: false)
    @completed_tasks = Task.where(completed: true)

    if today_task_empty?
      @repeated_tasks.each do |task|
        t1 = Task.create(title: task.title, completed: task.completed)
        t1.save
      end
    end
  end

  private

  def today_task_empty?
    Task.where(created_at: Date.today).empty?
  end
end
