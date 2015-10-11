class Survey < ActiveRecord::Base
  belongs_to :author
  has_many :questions, :dependent => :destroy
  has_many :submissions
  accepts_nested_attributes_for :questions, allow_destroy: true


  def number_of_questions
    questions.count
  end

  def valid
    !(questions.first.prompt.blank? || title.blank?)
  end

end
