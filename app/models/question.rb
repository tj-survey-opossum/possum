class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :replies
  accepts_nested_attributes_for :replies

  def self.type_names
    ["Yes/No", "Short Answer", "Long Answer"]
  end

end
