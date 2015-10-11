class Submission < ActiveRecord::Base
  has_many :replies
  belongs_to :survey

  accepts_nested_attributes_for :replies


end
