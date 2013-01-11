require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  test "should get plan" do
    assert_raise ActiveRecord::RecordNotFound do
      get :plan
    end
  end

  test "should get weather" do
    assert_raise ActiveRecord::RecordNotFound do
      get :weather
    end
  end

  test "should get clothes" do
    assert_raise ActiveRecord::RecordNotFound do
      get :clothes
    end
  end

  test "should get pictures" do
    assert_raise ActiveRecord::RecordNotFound do
      get :pictures
    end
  end

end
