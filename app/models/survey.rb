class Survey < ActiveRecord::Base
  belongs_to :author
  has_many :questions
  has_many :submissions
end
