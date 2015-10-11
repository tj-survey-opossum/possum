class Submission < ActiveRecord::Base
  has_many :replies
  belongs_to :survey


end
