class TasksController < ApplicationController
  def index
    #how to return all tasks in the database
    @tasks = Task.all
  end

  #this is where create a new task
  def new
    @task = Task.new
  end

  def create 
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  #whitelisting params
  def task_params
    params.require(:task).permit(:title, :details)
  end
end
