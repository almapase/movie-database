require 'test_helper'

class DashboardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get simple" do
    get :simple
    assert_response :success
  end

  test "should get doble" do
    get :doble
    assert_response :success
  end

  test "should get triple" do
    get :triple
    assert_response :success
  end

end
