require 'test_helper'

class VistaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get ciclista" do
    get :ciclista
    assert_response :success
  end

  test "should get taller" do
    get :taller
    assert_response :success
  end

end
