class Robot < ActiveRecord::Base
  has_many :attachments
  validates :name, :job, :height, :weight, :color, presence: true
end
