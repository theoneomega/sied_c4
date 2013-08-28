class PersonStatusesController < ApplicationController
  # GET /person_statuses
  # GET /person_statuses.json
  def index
    @person_statuses = PersonStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @person_statuses }
    end
  end

  # GET /person_statuses/1
  # GET /person_statuses/1.json
  def show
    @person_status = PersonStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person_status }
    end
  end

  # GET /person_statuses/new
  # GET /person_statuses/new.json
  def new
    @person_status = PersonStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person_status }
    end
  end

  # GET /person_statuses/1/edit
  def edit
    @person_status = PersonStatus.find(params[:id])
  end

  # POST /person_statuses
  # POST /person_statuses.json
  def create
    @person_status = PersonStatus.new(params[:person_status])

    respond_to do |format|
      if @person_status.save
        format.html { redirect_to @person_status, notice: 'Person status was successfully created.' }
        format.json { render json: @person_status, status: :created, location: @person_status }
      else
        format.html { render action: "new" }
        format.json { render json: @person_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /person_statuses/1
  # PUT /person_statuses/1.json
  def update
    @person_status = PersonStatus.find(params[:id])

    respond_to do |format|
      if @person_status.update_attributes(params[:person_status])
        format.html { redirect_to @person_status, notice: 'Person status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @person_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_statuses/1
  # DELETE /person_statuses/1.json
  def destroy
    @person_status = PersonStatus.find(params[:id])
    @person_status.destroy

    respond_to do |format|
      format.html { redirect_to person_statuses_url }
      format.json { head :no_content }
    end
  end
end
