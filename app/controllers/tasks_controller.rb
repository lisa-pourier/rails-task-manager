class TasksController < ApplicationController

  def index #ASK does this method need be called the same as the action name in routes?
    @allTask = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
    # @task.update(params[:task]) # Will raise ActiveModel::ForbiddenAttributesError
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
