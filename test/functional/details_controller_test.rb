require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  test "should get plan" do
    get :plan
    assert_response :success
  end

  test "should get weather" do
    get :weather
    assert_response :success
  end

  test "should get clothes" do
    get :clothes
    assert_response :success
  end

  test "should get pictures" do
    get :pictures
    assert_response :success
  end

end
