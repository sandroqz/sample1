class TasksController < ApplicationController
  respond_to :html, :json, :js
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    respond_with @tasks
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])
    respond_with @task
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new
    respond_with @task
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
    respond_with @task
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task])
    @tasks = Task.all if @task.save
    respond_with @task
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])
    @tasks = Task.all if @task.update_attributes(params[:task])
    respond_with @task
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.all
    respond_with @task
  end
end
