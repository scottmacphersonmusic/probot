class Robot < ActiveRecord::Base
  validates :name, :job, :height, :weight, :color, presence: true
end
