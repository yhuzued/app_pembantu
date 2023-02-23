class HomeController < ApplicationController
  def dashboard
    @task = Task.new
    @repeated_task = RepeatedTask.new
    @repeated_tasks = RepeatedTask.all
    @uncompleted_tasks = Task.where(completed: false)
    @completed_tasks = Task.where(completed: true)
  end

  def create_repeeated_task
    @repeated_tasks = RepeatedTask.all

    @repeated_tasks.each do |task|
      t1 = Task.create(title: task.title, completed: task.completed)
      t1.save
    end
    redirect_to root_path
  end

  private

  def today_task_empty?
    Task.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).empty?
  end
end
