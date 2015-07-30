class RobotsController < ApplicationController
  def index
    @robots = Robot.all
  end

  def new
    @robot = Robot.new
  end
end
