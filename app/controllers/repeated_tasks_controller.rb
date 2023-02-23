class RepeatedTasksController < ApplicationController
  before_action :set_repeated_task, only: %i[ show edit update destroy ]

  # GET /repeated_tasks or /repeated_tasks.json
  def index
    @repeated_tasks = RepeatedTask.all
  end

  # GET /repeated_tasks/1 or /repeated_tasks/1.json
  def show
  end

  # GET /repeated_tasks/new
  def new
    @repeated_task = RepeatedTask.new
  end

  # GET /repeated_tasks/1/edit
  def edit
  end

  # POST /repeated_tasks or /repeated_tasks.json
  def create
    @repeated_task = RepeatedTask.new(repeated_task_params)

    respond_to do |format|
      if @repeated_task.save
        format.html { redirect_to root_path, notice: "Repeated task was successfully created." }
        format.json { render :show, status: :created, location: @repeated_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @repeated_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repeated_tasks/1 or /repeated_tasks/1.json
  def update
    respond_to do |format|
      if @repeated_task.update(repeated_task_params)
        format.html { redirect_to root_path, notice: "Repeated task was successfully updated." }
        format.json { render :show, status: :ok, location: @repeated_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @repeated_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repeated_tasks/1 or /repeated_tasks/1.json
  def destroy
    @repeated_task.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Repeated task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repeated_task
      @repeated_task = RepeatedTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repeated_task_params
      params.require(:repeated_task).permit(:title, :completed)
    end
end
