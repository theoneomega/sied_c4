class VehiclesCriminalgroupsController < ApplicationController
  # GET /vehicles_criminalgroups
  # GET /vehicles_criminalgroups.json
  def index
    @vehicles_criminalgroups = VehiclesCriminalgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicles_criminalgroups }
    end
  end

  # GET /vehicles_criminalgroups/1
  # GET /vehicles_criminalgroups/1.json
  def show
    @vehicles_criminalgroup = VehiclesCriminalgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicles_criminalgroup }
    end
  end

  # GET /vehicles_criminalgroups/new
  # GET /vehicles_criminalgroups/new.json
  def new
    @vehicles_criminalgroup = VehiclesCriminalgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicles_criminalgroup }
    end
  end

  # GET /vehicles_criminalgroups/1/edit
  def edit
    @vehicles_criminalgroup = VehiclesCriminalgroup.find(params[:id])
  end

  # POST /vehicles_criminalgroups
  # POST /vehicles_criminalgroups.json
  def create
    @vehicles_criminalgroup = VehiclesCriminalgroup.new(params[:vehicles_criminalgroup])

    respond_to do |format|
      if @vehicles_criminalgroup.save
        format.html { redirect_to @vehicles_criminalgroup, notice: 'Vehicles criminalgroup was successfully created.' }
        format.json { render json: @vehicles_criminalgroup, status: :created, location: @vehicles_criminalgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @vehicles_criminalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicles_criminalgroups/1
  # PUT /vehicles_criminalgroups/1.json
  def update
    @vehicles_criminalgroup = VehiclesCriminalgroup.find(params[:id])

    respond_to do |format|
      if @vehicles_criminalgroup.update_attributes(params[:vehicles_criminalgroup])
        format.html { redirect_to @vehicles_criminalgroup, notice: 'Vehicles criminalgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicles_criminalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles_criminalgroups/1
  # DELETE /vehicles_criminalgroups/1.json
  def destroy
    @vehicles_criminalgroup = VehiclesCriminalgroup.find(params[:id])
    @vehicles_criminalgroup.destroy

    respond_to do |format|
      format.html { redirect_to vehicles_criminalgroups_url }
      format.json { head :no_content }
    end
  end
end
