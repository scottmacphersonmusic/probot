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
    assert_template :new, partial: '_form'
  end

  test "should show robot" do
    get :show, id: @robot
    assert_response :success
    assert_template :show
  end

  test "should create robot" do
    assert_difference('Robot.count') do
      post :create, robot: { name: "Buxley", job: "Compliments",
                             height: "5", weight: "90", color: "Brown" }
    end
    assert_redirected_to robot_path(assigns(:robot))
    assert_equal "Robot created!", flash[:success]
  end

  test "should get edit" do
    get :edit, id: @robot
    assert_response :success
    assert_template :edit, partial: '_form'
    assert_not_nil assigns(:robot)
  end
end
