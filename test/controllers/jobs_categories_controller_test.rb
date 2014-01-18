require 'test_helper'

class JobsCategoriesControllerTest < ActionController::TestCase
  setup do
    @jobs_category = jobs_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobs_category" do
    assert_difference('JobsCategory.count') do
      post :create, jobs_category: {  }
    end

    assert_redirected_to jobs_category_path(assigns(:jobs_category))
  end

  test "should show jobs_category" do
    get :show, id: @jobs_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobs_category
    assert_response :success
  end

  test "should update jobs_category" do
    patch :update, id: @jobs_category, jobs_category: {  }
    assert_redirected_to jobs_category_path(assigns(:jobs_category))
  end

  test "should destroy jobs_category" do
    assert_difference('JobsCategory.count', -1) do
      delete :destroy, id: @jobs_category
    end

    assert_redirected_to jobs_categories_path
  end
end
