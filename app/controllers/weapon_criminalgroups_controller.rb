class WeaponCriminalgroupsController < ApplicationController
  # GET /weapon_criminalgroups
  # GET /weapon_criminalgroups.json
  def index
    @weapon_criminalgroups = WeaponCriminalgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weapon_criminalgroups }
    end
  end

  # GET /weapon_criminalgroups/1
  # GET /weapon_criminalgroups/1.json
  def show
    @weapon_criminalgroup = WeaponCriminalgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weapon_criminalgroup }
    end
  end

  # GET /weapon_criminalgroups/new
  # GET /weapon_criminalgroups/new.json
  def new
    @weapon_criminalgroup = WeaponCriminalgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weapon_criminalgroup }
    end
  end

  # GET /weapon_criminalgroups/1/edit
  def edit
    @weapon_criminalgroup = WeaponCriminalgroup.find(params[:id])
  end

  # POST /weapon_criminalgroups
  # POST /weapon_criminalgroups.json
  def create
    @weapon_criminalgroup = WeaponCriminalgroup.new(params[:weapon_criminalgroup])

    respond_to do |format|
      if @weapon_criminalgroup.save
        format.html { redirect_to @weapon_criminalgroup, notice: 'Weapon criminalgroup was successfully created.' }
        format.json { render json: @weapon_criminalgroup, status: :created, location: @weapon_criminalgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @weapon_criminalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weapon_criminalgroups/1
  # PUT /weapon_criminalgroups/1.json
  def update
    @weapon_criminalgroup = WeaponCriminalgroup.find(params[:id])

    respond_to do |format|
      if @weapon_criminalgroup.update_attributes(params[:weapon_criminalgroup])
        format.html { redirect_to @weapon_criminalgroup, notice: 'Weapon criminalgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weapon_criminalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_criminalgroups/1
  # DELETE /weapon_criminalgroups/1.json
  def destroy
    @weapon_criminalgroup = WeaponCriminalgroup.find(params[:id])
    @weapon_criminalgroup.destroy

    respond_to do |format|
      format.html { redirect_to weapon_criminalgroups_url }
      format.json { head :no_content }
    end
  end
end
