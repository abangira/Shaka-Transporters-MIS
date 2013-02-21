require 'test_helper'

class RentPaymentsControllerTest < ActionController::TestCase
  setup do
    @rent_payment = rent_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rent_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent_payment" do
    assert_difference('RentPayment.count') do
      post :create, rent_payment: { category: @rent_payment.category, invoice_number: @rent_payment.invoice_number, paid: @rent_payment.paid, paid_by: @rent_payment.paid_by, payment_date: @rent_payment.payment_date, payment_mode: @rent_payment.payment_mode, payment_transaction_number: @rent_payment.payment_transaction_number, period_end: @rent_payment.period_end, period_start: @rent_payment.period_start, property: @rent_payment.property, rate_per_unit: @rent_payment.rate_per_unit, tenant: @rent_payment.tenant, total_amount: @rent_payment.total_amount }
    end

    assert_redirected_to rent_payment_path(assigns(:rent_payment))
  end

  test "should show rent_payment" do
    get :show, id: @rent_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rent_payment
    assert_response :success
  end

  test "should update rent_payment" do
    put :update, id: @rent_payment, rent_payment: { category: @rent_payment.category, invoice_number: @rent_payment.invoice_number, paid: @rent_payment.paid, paid_by: @rent_payment.paid_by, payment_date: @rent_payment.payment_date, payment_mode: @rent_payment.payment_mode, payment_transaction_number: @rent_payment.payment_transaction_number, period_end: @rent_payment.period_end, period_start: @rent_payment.period_start, property: @rent_payment.property, rate_per_unit: @rent_payment.rate_per_unit, tenant: @rent_payment.tenant, total_amount: @rent_payment.total_amount }
    assert_redirected_to rent_payment_path(assigns(:rent_payment))
  end

  test "should destroy rent_payment" do
    assert_difference('RentPayment.count', -1) do
      delete :destroy, id: @rent_payment
    end

    assert_redirected_to rent_payments_path
  end
end
