require 'test_helper'

class ExpensesControllerTest < ActionController::TestCase
  setup do
    @expense = expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post :create, expense: { account_affected: @expense.account_affected, authorized_by: @expense.authorized_by, comments: @expense.comments, invoice_number: @expense.invoice_number, item: @expense.item, payment_method: @expense.payment_method, payment_status: @expense.payment_status, purchased_by: @expense.purchased_by, quantity: @expense.quantity, supplier: @expense.supplier, total_amount: @expense.total_amount, unit_price: @expense.unit_price }
    end

    assert_redirected_to expense_path(assigns(:expense))
  end

  test "should show expense" do
    get :show, id: @expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expense
    assert_response :success
  end

  test "should update expense" do
    put :update, id: @expense, expense: { account_affected: @expense.account_affected, authorized_by: @expense.authorized_by, comments: @expense.comments, invoice_number: @expense.invoice_number, item: @expense.item, payment_method: @expense.payment_method, payment_status: @expense.payment_status, purchased_by: @expense.purchased_by, quantity: @expense.quantity, supplier: @expense.supplier, total_amount: @expense.total_amount, unit_price: @expense.unit_price }
    assert_redirected_to expense_path(assigns(:expense))
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete :destroy, id: @expense
    end

    assert_redirected_to expenses_path
  end
end
