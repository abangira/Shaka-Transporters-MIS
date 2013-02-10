require 'test_helper'

class FuelRefillsControllerTest < ActionController::TestCase
  setup do
    @fuel_refill = fuel_refills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuel_refills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuel_refill" do
    assert_difference('FuelRefill.count') do
      post :create, fuel_refill: { SKIP_RAILS_ADMIN_INITIALIZER=false: @fuel_refill.SKIP_RAILS_ADMIN_INITIALIZER=false, account_id: @fuel_refill.account_id, amount: @fuel_refill.amount, card_number: @fuel_refill.card_number, litres: @fuel_refill.litres, price: @fuel_refill.price, receipt_number: @fuel_refill.receipt_number, station: @fuel_refill.station, vehicle_number: @fuel_refill.vehicle_number }
    end

    assert_redirected_to fuel_refill_path(assigns(:fuel_refill))
  end

  test "should show fuel_refill" do
    get :show, id: @fuel_refill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuel_refill
    assert_response :success
  end

  test "should update fuel_refill" do
    put :update, id: @fuel_refill, fuel_refill: { SKIP_RAILS_ADMIN_INITIALIZER=false: @fuel_refill.SKIP_RAILS_ADMIN_INITIALIZER=false, account_id: @fuel_refill.account_id, amount: @fuel_refill.amount, card_number: @fuel_refill.card_number, litres: @fuel_refill.litres, price: @fuel_refill.price, receipt_number: @fuel_refill.receipt_number, station: @fuel_refill.station, vehicle_number: @fuel_refill.vehicle_number }
    assert_redirected_to fuel_refill_path(assigns(:fuel_refill))
  end

  test "should destroy fuel_refill" do
    assert_difference('FuelRefill.count', -1) do
      delete :destroy, id: @fuel_refill
    end

    assert_redirected_to fuel_refills_path
  end
end
