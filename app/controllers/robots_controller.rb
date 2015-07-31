class RobotsController < ApplicationController
  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params)

    if @robot.save
      flash[:success] = "Robot created!"
      redirect_to @robot
    else
      render 'new'
    end
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :job, :height, :weight, :color)
  end
end
