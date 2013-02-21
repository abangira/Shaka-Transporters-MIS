class RentPaymentsController < ApplicationController
  # GET /rent_payments
  # GET /rent_payments.json
  def index
    @rent_payments = RentPayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rent_payments }
    end
  end

  # GET /rent_payments/1
  # GET /rent_payments/1.json
  def show
    @rent_payment = RentPayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rent_payment }
    end
  end

  # GET /rent_payments/new
  # GET /rent_payments/new.json
  def new
    @rent_payment = RentPayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rent_payment }
    end
  end

  # GET /rent_payments/1/edit
  def edit
    @rent_payment = RentPayment.find(params[:id])
  end

  # POST /rent_payments
  # POST /rent_payments.json
  def create
    @rent_payment = RentPayment.new(params[:rent_payment])

    respond_to do |format|
      if @rent_payment.save
        format.html { redirect_to @rent_payment, notice: 'Rent payment was successfully created.' }
        format.json { render json: @rent_payment, status: :created, location: @rent_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @rent_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rent_payments/1
  # PUT /rent_payments/1.json
  def update
    @rent_payment = RentPayment.find(params[:id])

    respond_to do |format|
      if @rent_payment.update_attributes(params[:rent_payment])
        format.html { redirect_to @rent_payment, notice: 'Rent payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rent_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_payments/1
  # DELETE /rent_payments/1.json
  def destroy
    @rent_payment = RentPayment.find(params[:id])
    @rent_payment.destroy

    respond_to do |format|
      format.html { redirect_to rent_payments_url }
      format.json { head :no_content }
    end
  end
end
