require 'test_helper'

class RobotsControllerTest < ActionController::TestCase
  def setup
    @robot = robots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "should show bookmark" do
    get :show, id: @robot
    assert_response :success
    assert_template :show
  end

  test "should create bookmark" do
    assert_difference('Robot.count') do
      post :create, robot: { name: "Buxley", job: "Compliments",
                             height: "5", weight: "90", color: "Brown" }
    end
    assert_redirected_to robot_path(assigns(:robot))
    assert_equal "Robot created!", flash[:success]
  end
end
