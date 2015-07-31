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

  def edit
    @robot = Robot.find(params[:id])
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

  def update
    @robot = Robot.find(params[:id])

    if @robot.update(robot_params)
      flash[:success] = "Robot updated!"
      redirect_to @robot
    else
      render 'edit'
    end
  end

  def destroy
    @robot = Robot.find(params[:id])
    @robot.destroy
    flash[:success] = "Robot deleted!"
    redirect_to robots_path
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :job, :height, :weight, :color)
  end
end
