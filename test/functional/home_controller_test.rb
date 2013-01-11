require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    assert_raise ActiveRecord::RecordNotFound do
      get :index
    end
  end

end
