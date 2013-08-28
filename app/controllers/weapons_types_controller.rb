class WeaponsTypesController < ApplicationController
  # GET /weapons_types
  # GET /weapons_types.json
  def index
    @weapons_types = WeaponsType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weapons_types }
    end
  end

  # GET /weapons_types/1
  # GET /weapons_types/1.json
  def show
    @weapons_type = WeaponsType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weapons_type }
    end
  end

  # GET /weapons_types/new
  # GET /weapons_types/new.json
  def new
    @weapons_type = WeaponsType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weapons_type }
    end
  end

  # GET /weapons_types/1/edit
  def edit
    @weapons_type = WeaponsType.find(params[:id])
  end

  # POST /weapons_types
  # POST /weapons_types.json
  def create
    @weapons_type = WeaponsType.new(params[:weapons_type])

    respond_to do |format|
      if @weapons_type.save
        format.html { redirect_to @weapons_type, notice: 'Weapons type was successfully created.' }
        format.json { render json: @weapons_type, status: :created, location: @weapons_type }
      else
        format.html { render action: "new" }
        format.json { render json: @weapons_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weapons_types/1
  # PUT /weapons_types/1.json
  def update
    @weapons_type = WeaponsType.find(params[:id])

    respond_to do |format|
      if @weapons_type.update_attributes(params[:weapons_type])
        format.html { redirect_to @weapons_type, notice: 'Weapons type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weapons_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapons_types/1
  # DELETE /weapons_types/1.json
  def destroy
    @weapons_type = WeaponsType.find(params[:id])
    @weapons_type.destroy

    respond_to do |format|
      format.html { redirect_to weapons_types_url }
      format.json { head :no_content }
    end
  end
end
