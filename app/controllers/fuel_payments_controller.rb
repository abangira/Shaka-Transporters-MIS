class FuelPaymentsController < ApplicationController
  # GET /fuel_payments
  # GET /fuel_payments.json
  def index
    @fuel_payments = FuelPayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fuel_payments }
    end
  end

  # GET /fuel_payments/1
  # GET /fuel_payments/1.json
  def show
    @fuel_payment = FuelPayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fuel_payment }
    end
  end

  # GET /fuel_payments/new
  # GET /fuel_payments/new.json
  def new
    @fuel_payment = FuelPayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fuel_payment }
    end
  end

  # GET /fuel_payments/1/edit
  def edit
    @fuel_payment = FuelPayment.find(params[:id])
  end

  # POST /fuel_payments
  # POST /fuel_payments.json
  def create
    @fuel_payment = FuelPayment.new(params[:fuel_payment])

    respond_to do |format|
      if @fuel_payment.save
        format.html { redirect_to @fuel_payment, notice: 'Fuel payment was successfully created.' }
        format.json { render json: @fuel_payment, status: :created, location: @fuel_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @fuel_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fuel_payments/1
  # PUT /fuel_payments/1.json
  def update
    @fuel_payment = FuelPayment.find(params[:id])

    respond_to do |format|
      if @fuel_payment.update_attributes(params[:fuel_payment])
        format.html { redirect_to @fuel_payment, notice: 'Fuel payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fuel_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuel_payments/1
  # DELETE /fuel_payments/1.json
  def destroy
    @fuel_payment = FuelPayment.find(params[:id])
    @fuel_payment.destroy

    respond_to do |format|
      format.html { redirect_to fuel_payments_url }
      format.json { head :no_content }
    end
  end
end
