class Survey < ActiveRecord::Base
  belongs_to :author
  has_many :questions, :dependent => :destroy
  has_many :submissions
  accepts_nested_attributes_for :questions, allow_destroy: true
end
