class Task1sController < ApplicationController
  # GET /task1s
  # GET /task1s.json
  def index
    @task1s = Task1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @task1s }
    end
  end

  # GET /task1s/1
  # GET /task1s/1.json
  def show
    @task1 = Task1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task1 }
    end
  end

  # GET /task1s/new
  # GET /task1s/new.json
  def new
    @task1 = Task1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task1 }
    end
  end

  # GET /task1s/1/edit
  def edit
    @task1 = Task1.find(params[:id])
  end

  # POST /task1s
  # POST /task1s.json
  def create
    @task1 = Task1.new(params[:task1])

    respond_to do |format|
      if @task1.save
        format.html { redirect_to @task1, notice: 'Task1 was successfully created.' }
        format.json { render json: @task1, status: :created, location: @task1 }
      else
        format.html { render action: "new" }
        format.json { render json: @task1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /task1s/1
  # PUT /task1s/1.json
  def update
    @task1 = Task1.find(params[:id])

    respond_to do |format|
      if @task1.update_attributes(params[:task1])
        format.html { redirect_to @task1, notice: 'Task1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task1s/1
  # DELETE /task1s/1.json
  def destroy
    @task1 = Task1.find(params[:id])
    @task1.destroy

    respond_to do |format|
      format.html { redirect_to task1s_url }
      format.json { head :no_content }
    end
  end
end
