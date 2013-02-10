class FuelRefillsController < ApplicationController
  # GET /fuel_refills
  # GET /fuel_refills.json
  def index
    @fuel_refills = FuelRefill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fuel_refills }
    end
  end

  # GET /fuel_refills/1
  # GET /fuel_refills/1.json
  def show
    @fuel_refill = FuelRefill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fuel_refill }
    end
  end

  # GET /fuel_refills/new
  # GET /fuel_refills/new.json
  def new
    @fuel_refill = FuelRefill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fuel_refill }
    end
  end

  # GET /fuel_refills/1/edit
  def edit
    @fuel_refill = FuelRefill.find(params[:id])
  end

  # POST /fuel_refills
  # POST /fuel_refills.json
  def create
    @fuel_refill = FuelRefill.new(params[:fuel_refill])

    respond_to do |format|
      if @fuel_refill.save
        format.html { redirect_to @fuel_refill, notice: 'Fuel refill was successfully created.' }
        format.json { render json: @fuel_refill, status: :created, location: @fuel_refill }
      else
        format.html { render action: "new" }
        format.json { render json: @fuel_refill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fuel_refills/1
  # PUT /fuel_refills/1.json
  def update
    @fuel_refill = FuelRefill.find(params[:id])

    respond_to do |format|
      if @fuel_refill.update_attributes(params[:fuel_refill])
        format.html { redirect_to @fuel_refill, notice: 'Fuel refill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fuel_refill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuel_refills/1
  # DELETE /fuel_refills/1.json
  def destroy
    @fuel_refill = FuelRefill.find(params[:id])
    @fuel_refill.destroy

    respond_to do |format|
      format.html { redirect_to fuel_refills_url }
      format.json { head :no_content }
    end
  end
end
