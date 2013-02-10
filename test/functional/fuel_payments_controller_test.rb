require 'test_helper'

class FuelPaymentsControllerTest < ActionController::TestCase
  setup do
    @fuel_payment = fuel_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuel_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuel_payment" do
    assert_difference('FuelPayment.count') do
      post :create, fuel_payment: { SKIP_RAILS_ADMIN_INITIALIZER=false: @fuel_payment.SKIP_RAILS_ADMIN_INITIALIZER=false, account_id: @fuel_payment.account_id, amount_paid: @fuel_payment.amount_paid, balance_amount: @fuel_payment.balance_amount, period_end: @fuel_payment.period_end, period_start: @fuel_payment.period_start, receipt_number: @fuel_payment.receipt_number, station: @fuel_payment.station }
    end

    assert_redirected_to fuel_payment_path(assigns(:fuel_payment))
  end

  test "should show fuel_payment" do
    get :show, id: @fuel_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuel_payment
    assert_response :success
  end

  test "should update fuel_payment" do
    put :update, id: @fuel_payment, fuel_payment: { SKIP_RAILS_ADMIN_INITIALIZER=false: @fuel_payment.SKIP_RAILS_ADMIN_INITIALIZER=false, account_id: @fuel_payment.account_id, amount_paid: @fuel_payment.amount_paid, balance_amount: @fuel_payment.balance_amount, period_end: @fuel_payment.period_end, period_start: @fuel_payment.period_start, receipt_number: @fuel_payment.receipt_number, station: @fuel_payment.station }
    assert_redirected_to fuel_payment_path(assigns(:fuel_payment))
  end

  test "should destroy fuel_payment" do
    assert_difference('FuelPayment.count', -1) do
      delete :destroy, id: @fuel_payment
    end

    assert_redirected_to fuel_payments_path
  end
end
