class Project < ApplicationRecord
  validates_presence_of :title

  def to_s
    self.title
  end
end
