class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :replies

  def self.type_names
    ["Yes/No", "Short Answer", "Long Answer"]
  end
end
