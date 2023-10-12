class TasksController < ApplicationController
  before_action :confirm_login
  def index
    #how to return all tasks in the database
    @tasks = current_user.tasks.all
  end

  #this is where create a new task
  def new
    @task = Task.new
  end

  def create 
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
      @task.errors.full_messages
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else 
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
  
  def show
    @task = Task.find(params[:id])
  end

  def complete
    @task = Task.find(params[:id])
    @task.update_attribute(:completed, params[:completed])
    redirect_to :back
  end

  private
  #whitelisting params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def confirm_login
    unless current_user
      redirect_to root_path, alert: "You must log in to manage a to do list."
    end
  end

end
