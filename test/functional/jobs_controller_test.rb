require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { SKIP_RAILS_ADMIN_INITIALIZER=false: @job.SKIP_RAILS_ADMIN_INITIALIZER=false, allowance: @job.allowance, amount: @job.amount, change_of_route: @job.change_of_route, client: @job.client, days: @job.days, departure_date: @job.departure_date, document_number: @job.document_number, driver_name: @job.driver_name, fuel: @job.fuel, fuel_payment_method: @job.fuel_payment_method, job_amount: @job.job_amount, job_date: @job.job_date, job_details: @job.job_details, job_payment_method: @job.job_payment_method, job_rate: @job.job_rate, previous_route: @job.previous_route, price_per_litre: @job.price_per_litre, receipt_number: @job.receipt_number, route_given: @job.route_given, station: @job.station, vehicle_number: @job.vehicle_number, weight_in_tons: @job.weight_in_tons }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { SKIP_RAILS_ADMIN_INITIALIZER=false: @job.SKIP_RAILS_ADMIN_INITIALIZER=false, allowance: @job.allowance, amount: @job.amount, change_of_route: @job.change_of_route, client: @job.client, days: @job.days, departure_date: @job.departure_date, document_number: @job.document_number, driver_name: @job.driver_name, fuel: @job.fuel, fuel_payment_method: @job.fuel_payment_method, job_amount: @job.job_amount, job_date: @job.job_date, job_details: @job.job_details, job_payment_method: @job.job_payment_method, job_rate: @job.job_rate, previous_route: @job.previous_route, price_per_litre: @job.price_per_litre, receipt_number: @job.receipt_number, route_given: @job.route_given, station: @job.station, vehicle_number: @job.vehicle_number, weight_in_tons: @job.weight_in_tons }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
