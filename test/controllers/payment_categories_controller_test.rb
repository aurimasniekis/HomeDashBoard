require 'test_helper'

class PaymentCategoriesControllerTest < ActionController::TestCase
  setup do
    @payment_category = payment_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_category" do
    assert_difference('PaymentCategory.count') do
      post :create, payment_category: { description: @payment_category.description, title: @payment_category.title }
    end

    assert_redirected_to payment_category_path(assigns(:payment_category))
  end

  test "should show payment_category" do
    get :show, id: @payment_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_category
    assert_response :success
  end

  test "should update payment_category" do
    patch :update, id: @payment_category, payment_category: { description: @payment_category.description, title: @payment_category.title }
    assert_redirected_to payment_category_path(assigns(:payment_category))
  end

  test "should destroy payment_category" do
    assert_difference('PaymentCategory.count', -1) do
      delete :destroy, id: @payment_category
    end

    assert_redirected_to payment_categories_path
  end
end
